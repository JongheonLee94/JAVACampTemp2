package util;

import java.io.File;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class S3Util {
	@SuppressWarnings("deprecation")
	public static void uploadFile(String fileName) {
		String SavePath = "C:\\jps_image\\";
		File file = new File(SavePath+fileName);
		
		String BUCKET_NAME = "jsp.bucket";
		String ACCESS_KEY = "AKIARV7FNXIAL7R6YQSG";
		String SECRET_KEY = "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";
		
		AmazonS3 amazonS3;
		
		AWSCredentials awsCredentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);
		amazonS3 = new AmazonS3Client(awsCredentials);
		
		if (amazonS3 != null) {
			try {
				PutObjectRequest putObjectRequest = new PutObjectRequest(BUCKET_NAME, fileName, file);
				putObjectRequest.setCannedAcl(CannedAccessControlList.PublicRead);
				amazonS3.putObject(putObjectRequest);
				
				
			} catch (AmazonServiceException ase) {
				ase.printStackTrace();
			} finally {
				amazonS3 = null;
			}
		}
	}
}
