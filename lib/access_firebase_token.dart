import 'package:googleapis_auth/auth_io.dart';

class AccessTokenFirebase {
  static String firebaseMessaginScope =
      "https://www.googleapis.com/auth/firebase.messaging";

  Future<String> getAccessToken() async {
    final client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson(
          {
            "type": "service_account",
            "project_id": "fir-setup-4dc57",
            "private_key_id": "d86bb9b8c53d0e62998ae0aed8847de50b56c816",
            "private_key":
                "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQD2/laCiANvf1U3\n6K+uyyyWRnztjZHLoqpdGwNLalRn7cf+njU8C0wGLkuSRZ3vtBvVfXGO+TbvyilC\neiAzMMwLVXp8ZfAf+6UWhvgmPYbYUH22Js4OaFyw6ZXekvO7oSaFoNR2NX5pcwRR\nJwlka5XJX5JXzKFunt9SoStc6TGCQejTlb4OV+1MGXkRhFfiscWyWnPqO0VZsBVB\nwG6/R1D2yTIhiFY0WJvRiGGB0xlkSupoyLHi+c2GpgQPR/2IGROSNH2KiV3qoz8d\ng1zm035Iae8DPD1zpiT0rZNChrlr1eNYmjuUNn52Wd0raUEQWbuWOvuN4Ssrdp+u\nffILZ0FDAgMBAAECggEAEyoG0lf1VEhf91eRkhFnoz1S4iey4Ub8yv6WkdptNCcp\n9mKWJNOHkY80A+Rs7bVe14DFN9+0WISqEONi7jXiDxsRxuct631eANJ2HJl3hf8w\n0dpO8KU+U+e73iouyScm0wV4lrdt2Ia5FgbeXrFOTPKiazeQawHeuA2TTME3OzD0\n9b2e+ustVdXlSMIJ6UVGZaYvXF7K/R19nnqCPBeAuEjYTepwMgeSItqb1h0U/z8R\ns06jrsPMGLGlaF0O4jgubF2QL0SGQ5TTylOMegGvdcgG3iNLwrNDLP6c8v812s+N\niVuQiHSlxNDdXPh38Z/NpViMRBacRdhmjafhsr8cUQKBgQD/2n95aElD1p+DCfBL\nhIew1tSNmAMxV5C+z0ZaMSNYA8HD+DkL1H1IPe0XwfCZ5Z6ejxQRGLhMTOcl5CJM\n2tuan76xo8oDqmOXW4cLfSqEsSBtEODjaEUUGj84j1IcdyVYM17a3yZHOVRQvepm\ns/DQyYgwSTfWPWLfe9rJbnWlqQKBgQD3IoqTwzLYuz3k+vncX9D9MxeyIv0OhoDe\nIE8M7EwbMa3WozS0BfQwKcvI+7Kde7/u5WstLfamZ7kF1tkA6Uwj/S8izcqaVXBe\npnsLTkPCfbATiKA6Rwkr0yRNBqsHrzG1iiq4J2+oL/Ndg+g6QwySie6sOWP9W8si\napkfUW/rCwKBgQCov5seHztbY/43NmHn3RSF/VuZvC426BNO1nUHXat7DJdLQreV\nZuPutvFenwqq5njVCXdpw00i/gHiyvIYkK0Q8dWbYnUGL+aZ2MNcP4TAmfbSGLTL\nKGWPWbRjAJxeq/LUlqU0ZMPhbB2BV5F3ha0KeDG77z7Frh09W3o1KwaraQKBgQCm\n+feXjrO0LA7Nv6VCeJrD+NlxyqIgRlCbxEik+qMRXKeP9gWN/NfYEuVVjnpIXWx5\nBRk9FWkpVbt1boyASSDg0Bgg89qIHGIoEWPhZ6fwqOtmx1E7DvPrYGWOhYrZTk3P\n0uK6Oir/ACb2cEFf3B2KhRd11fDxJixBvLRorKVpsQKBgFjAd7hNvORIYj0Sqa5k\n4/lugiZbemiWCDlGmurmeIIZMQmAkpIa0GFaUpUS7JlTQEYBpa9SqMkh3HbLcd7p\nCcjccwR4Aohudm1rSe/nTg0CIVI2r/JnP7NQwQRHIzkG0YpDaYyYhaKHvjZPtI+U\nXWWZzgBe7Qe49XHzA6VL4n6M\n-----END PRIVATE KEY-----\n",
            "client_email":
                "firebase-adminsdk-fbsvc@fir-setup-4dc57.iam.gserviceaccount.com",
            "client_id": "104344333118158844630",
            "auth_uri": "https://accounts.google.com/o/oauth2/auth",
            "token_uri": "https://oauth2.googleapis.com/token",
            "auth_provider_x509_cert_url":
                "https://www.googleapis.com/oauth2/v1/certs",
            "client_x509_cert_url":
                "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40fir-setup-4dc57.iam.gserviceaccount.com",
            "universe_domain": "googleapis.com"
          },
        ),
        [firebaseMessaginScope]);

    final accessToken = client.credentials.accessToken.data;
    return accessToken;
  }
}
