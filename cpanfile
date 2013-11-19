requires 'perl', '5.008001';
<<<<<<< HEAD
requires 'Nephia';
requires 'MIME::Base64';
=======
requires 'Nephia', '0.80';
>>>>>>> e8566256548854b091b751078388399884cf827c

on 'test' => sub {
    requires 'Test::More', '0.98';
};

