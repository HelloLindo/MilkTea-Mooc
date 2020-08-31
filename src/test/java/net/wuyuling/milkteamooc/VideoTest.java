package net.wuyuling.milkteamooc;

import junit.framework.TestCase;
import net.wuyuling.milkteamooc.domain.Video;
import net.wuyuling.milkteamooc.mapper.VideoMapper;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.util.List;

@RunWith(SpringRunner.class) // Test with JUnit
@SpringBootTest(classes = {MilkteamoocApplication.class}) // Launch the springboot project
@AutoConfigureMockMvc // Enable MockMvc
public class VideoTest {

    @Autowired
    private VideoMapper videoMapper;

    private List<Video> videoList;

    @Autowired
    private MockMvc mockMvc;

    @Before
    public void testBefore() {
        videoList = videoMapper.listVideo();
        System.out.println("Test Before Done.");
    }

    @Test
    public void testVideoId() {
        for (Video video : videoList) {
            TestCase.assertTrue(video.getId() >= 0);
        }
        System.out.println("Test VideoId Done.");
    }

    @Test
    public void testVideoTitle() {
        for (Video video : videoList) {
            // Title is NOT empty
            TestCase.assertTrue(video.getTitle().length() > 0);
        }
        System.out.println("Test VideoTitle Done.");
    }

    @Test
    public void testVideoListApi() throws Exception {

        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/api/v1/pub/video/list"))
                .andExpect(MockMvcResultMatchers.status().isOk()).andReturn();

        int status = mvcResult.getResponse().getStatus();
        TestCase.assertEquals(200, status);

        // Using 'utf-8' charset to prevent messy code of other languages
//        String result = mvcResult.getResponse().getContentAsString(Charset.forName("utf-8"));
//        System.out.println(result);

        System.out.println("Test VideoListApi Done.");

    }

    @After
    public void testAfter() {
        System.out.println("Test After Done.");
    }
}
