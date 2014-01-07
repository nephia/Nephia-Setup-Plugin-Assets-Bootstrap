requires 'perl', '5.008001';
requires 'MIME::Base64';
requires 'Nephia', '0.80';
requires 'File::ShareDir', '0';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test::File::ShareDir', '0';
};

