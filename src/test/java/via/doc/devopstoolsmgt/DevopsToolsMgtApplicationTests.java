package via.doc.devopstoolsmgt;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import via.doc.devopstoolsmgt.controller.DevOpsPtController;

@SpringBootTest
class DevopsToolsMgtApplicationTests {

    @Autowired
    DevOpsPtController controller;

    @Test
    void contextLoads() {
    }

    @Test
    void health() {
        assertEquals("ALL COMPONENTS UP. HEALTH CHECK OK!",
                controller.healthCheck());

    }

    @Test
    void version() {
        assertEquals("SNAPSHOT-1.0",
                controller.version());

    }

    @Test
    void toolsContent() {
        assertEquals("GitLab, GIT",
                controller.getRandomTools());

    }
}
