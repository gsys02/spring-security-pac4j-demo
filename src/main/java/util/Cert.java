package util;

public class Cert {

	public Cert() {
		String keystorePath = "/home/gnu/keystore.jks";
		System.setProperty("javax.net.ssl.trustStore", keystorePath);
	}

}
