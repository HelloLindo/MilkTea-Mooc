package net.wuyuling.milkteamooc.task;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;

import java.util.concurrent.Future;

@Component
@Async
public class AsyncTask {
    /**
     * Send a message to user's mobile phone using async task
     *
     * @return A successful string
     */
    public Future<String> sendMsg() {
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return new AsyncResult<>("sendMsg Done");
        // return new AsyncResult<User>(new User(5, "Brian", "112233"));
    }

//    /**
//     * Below are the usage of sendMsg
//     */
//    public class testSendMsg {
//        @Autowired
//        private AsyncTask asyncTask;
//
//        public JsonData testAsync() throws InterruptedException, ExecutionException, TimeoutException {
//            Future<String> sendMsg = asyncTask.sendMsg();
//            // sendMsg.get(2, TimeUnit.MINUTES); // Use this method to wait the async task until timeout
//            // sendMsg.isDone() // Use this method to check the progress
//            return JsonData.buildSuccess("Sent Msg to User");
//        }
//    }

}
