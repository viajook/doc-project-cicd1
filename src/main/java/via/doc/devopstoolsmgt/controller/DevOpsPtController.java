package via.doc.devopstoolsmgt.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DevOpsPtController {
    @GetMapping("/")
    public String healthCheck() {
        return "ALL COMPONENTS UP. HEALTH CHECK OK!";
    }

    @GetMapping("/version")
    public String version() {
        return "SNAPSHOT-1.0";
    }

    @GetMapping("/phases")
    public String getRandomPhases() {
        return "7 Cs - Continuous Development.";
    }

    @GetMapping("/tools")
    public String getRandomTools() {
        return "GitLab, GitHub Actions";
    }
}
