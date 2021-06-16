package ai.skilledin.careerin.automl;

import static org.assertj.core.api.Assertions.fail;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;

import hex.genmodel.MojoModel;
import hex.genmodel.easy.EasyPredictModelWrapper;

@SpringBootTest
class AutoMLTest {
	private static final Logger logger = LoggerFactory.getLogger(AutoMLTest.class);
	private static final String URL = "https://drive.google.com/uc?export=download&id=13rXMshrQmuU3I9tBsrU8ff6FpcMbQaI_";

	@Test
	void test() {

		String moelLocation = "/tmp/final_model.zip";

		EasyPredictModelWrapper model;
		try {
			model = new EasyPredictModelWrapper(MojoModel.load(moelLocation));
			logger.info("successfully loaded the AI Model");
		} catch (IOException e) {
			try (BufferedInputStream in = new BufferedInputStream(new URL(URL).openStream());
					FileOutputStream fileOutputStream = new FileOutputStream(moelLocation)) {
				byte dataBuffer[] = new byte[1024];
				int bytesRead;
				while ((bytesRead = in.read(dataBuffer, 0, 1024)) != -1) {
					fileOutputStream.write(dataBuffer, 0, bytesRead);
				}
				fileOutputStream.close();
				model = new EasyPredictModelWrapper(MojoModel.load(moelLocation));
				logger.info("Successfully downloaded Model");
			} catch (IOException ie) {
				logger.error("unable to locate model");
				ie.printStackTrace();
			}
		}
	}

	public static void main(String[] args) {

		try {

			EasyPredictModelWrapper model = new EasyPredictModelWrapper(MojoModel.load(URL));
			logger.info("Successfully downloaded Model");
		} catch (Exception e) {
			fail("failed to locate model");
		}
	}

}
