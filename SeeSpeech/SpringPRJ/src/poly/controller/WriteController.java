package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import poly.service.IWriteService;

import javax.annotation.Resource;

@Controller
public class WriteController {

    private final Logger log = Logger.getLogger(this.getClass());

    @Resource(name="WriteService")
    private IWriteService writeService;

    @RequestMapping(value= "quizeWrite.do")
    public String Write()throws Exception {
        log.info(this.getClass().getName() + "quizeWrite strat");

        return "write/write";
    }

//게시판 리스트로 이동
    @RequestMapping(value= "writelist.do")
    public String List()throws Exception {
        log.info(this.getClass().getName() + "quizeWrite List strat");

        return "write/list";
    }
}
