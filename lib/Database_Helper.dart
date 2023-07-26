import 'package:food_app/Assintant.dart';
import 'package:sqflite/sqflite.dart';
import 'USER.dart';



// (username TEXT, Email TEXT PRIMARY KEY, Password TEXT, region TEXT, PhoneNumber INTEGER)

class LocalDatabase
{
  static late Database database;
  // static List<User> user = [];
  static Map<String, User> user ={};

  static Future<void> CreateDatabase() async
  {
    database = await openDatabase(
        'foodApp.db',
        version: 1,

        onCreate: (database, version){
          print ("Database is created !!");

          database.execute(
              'CREATE TABLE Customer (username text, Email text PRIMARY KEY, Password text, region text, PhoneNumber text, productCounter INTEGER, bill INTEGER )'

          ).
          then((value) {
            print('TABLE IS CREATED !!');
          }).
          catchError((error){
            print(error.toString());
          });
        },

        onOpen: (database){
          print ('Database is open !!');
        }

    );


  }


  static void getUserData(String email, String Password)
  {
    database.rawQuery('SELECT * From Customer where Email = ? AND Password = ?',
        [email, Password]).then((value)
      {
       value.forEach((element) {
         user[email] = User(
           username: element['username'] as String,
           Email: element['Email'] as String,
           Password: element['Password'] as String,
           region: element['region'] as String,
           PhoneNumber: element['PhoneNumber'] as String,
         );
       });
        //user['$email'] = User(value.first);
        // print(value);
      }
    ).catchError((error)
    {
      print (error.toString());
    });
    //print(user[email]?.Email);

    // .then((value){
    //
    //   // value.forEach((element) {
    //   //   user.addAll({
    //   //     User(
    //   //         username: element['username'] as String,
    //   //         Email: element['Email'] as String,
    //   //         Password: element['Password'] as String,
    //   //         region: element['region'] as String,
    //   //         PhoneNumber: element['PhoneNumber'] as String
    //   //     )
    //   //   });
    //   });
    //   for(int i = 0; i < value.length;i++)
    //     {
    //       if(email.compareTo(user[i].Email) == 1)
    //         {
    //           print(user[i].username);
    //           print(user[i].Email);
    //           print(user[i].Password);
    //           print(user[i].region);
    //           print(user[i].PhoneNumber);
    //         }
    //     }
    //
    // }).catchError((error)
    // {
    //   print(error.toString());
    // });
  }

  static void insertDatabase({
    required String username,
    required String Email,
    required String Password,
    required String region,
    required String PhoneNumber,
    int? productCounter,
    int? bill
  })async
  {
    database.rawInsert(
        'INSERT INTO Customer (username, Email, Password, region, PhoneNumber) VALUES(?, ?, ?, ?, ?)',
        [username, Email, Password, region, PhoneNumber]
    ).then((value)
    {
       print('Inserted Sucessfully');
       var user = User(username:username, Email:Email, Password: Password, region: region, PhoneNumber: PhoneNumber);
    }).catchError((error)
    {
      print(error.toString());
    });
  }

  static updateDatabase({
    String? username,
    required String Email,
    String? Password,
    String? region,
    String? PhoneNumber,
    int? productCounter,
    int? bill})
  {
    database.rawUpdate(
        'UPDATE TABLE Customer SET username = ?, Password = ?, region = ?, PhoneNumber = ? productCounter = ? bill = ? WHERE Email = ?',
        [username, Password, region, PhoneNumber, Email, productCounter, bill]
    ).then((value)
    {
      print('Updated Successfully !!!!');
    }).catchError((error)
    {
      print(error.toString());
    }
    );
  }

}
