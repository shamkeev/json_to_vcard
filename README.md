# json_to_vcard
Convert json hash vcard

This is a ruby script that was written by me to convert Telegram exported contacts in json format
to a vCard format (Virtual Card Format) with .vcf file extension.

The script is pretty simple. You use input file result.json which should have following format:
{
  "list":[
    {
      "user_id": 0,
      "first_name": "John",
      "last_name": "Smith",
      "phone_number": "+99655512345",
      "date": "2019-05-31T21:58:59"
     },
     {
      "user_id": 0,
      "first_name": "Иван",
      "last_name": "Иванов",
      "phone_number": "00996777889900",
      "date": "2019-05-31T21:58:59"
     },
     {
      "user_id": 0,
      "first_name": "Steve",
      "last_name": "Jobs",
      "phone_number": "0772181111",
      "date": "2019-05-31T21:58:59"
     }
  ]
}

It is a hash with one key "list" which is an array of hashes. This is a default json format that is exported by Telegram chat app.

I've created this script using ruby v 2.6. You will need to install json gem. For that type in your terminal:
gem install json

To run the script, simply type in terminal:
ruby jsontovcf.rb

The output file is named output.vcf. You can open this file using your smartphone and import into your contacts list.

