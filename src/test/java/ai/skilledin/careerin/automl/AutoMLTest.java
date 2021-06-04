package ai.skilledin.careerin.automl;

import static org.assertj.core.api.Assertions.fail;

import java.io.IOException;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;

import hex.genmodel.MojoModel;

@SpringBootTest
class AutoMLTest {
	private static final Logger logger = LoggerFactory.getLogger(AutoMLTest.class);

	@Test
	void test() {
		String moelLocation = "/home/raj/ai-models/xgboost_dadee8ad_2654_4fb1_864f_c2a55c9b510c_XG_ROLE_ID.zip";

		try {
			MojoModel.load(moelLocation);
			logger.info("successfully loaded the AI Model");
		} catch (IOException e) {
			fail("Failed to load model from location " + moelLocation + " ");
		}
	}

}
