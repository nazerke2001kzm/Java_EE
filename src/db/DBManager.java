package db;

import models.Task;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private static List<Task> tasks= new ArrayList<>();
    private static Long id = 5l;

    static {
        tasks.add(new Task(1L,"Создать Веб приложение","shbsd sdjhbsd jsds jsd jsd ","23.02.2023","нет"));
        tasks.add(new Task(2L,"Создать Веб приложение","shbsd sdjhbsd jsds jsd jsd ","23.02.2023","нет"));
        tasks.add(new Task(3L,"Создать Веб приложение","shbsd sdjhbsd jsds jsd jsd ","23.02.2023","нет"));
        tasks.add(new Task(4L,"Создать Веб приложение","shbsd sdjhbsd jsds jsd jsd ","23.02.2023","нет"));

    }
    public  static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;

    }
    public static void saveTask(Task task){
        for(Task item:tasks){
            if(item.getId()==task.getId()){
                item.setName(task.getName());
                item.setDone(task.getDone());
                item.setDescription(task.getDescription());
                item.setDeadlineDate(task.getDeadlineDate());
            }
        }
    }
    public static Task getTask(Long id){
        for (Task item : tasks) {
            if (item.getId().equals(id)){
                return item;
            }
        }
        return null;
    }
    public  static List<Task> getAllTasks() {
        return tasks;
    }
    /*
    public  static void deleteTask(Long id){
        for (Task item : tasks) {
            if (item.getId().equals(id)){
                tasks.remove(item);
            }
        }
    }*/
    public  static void deleteTask(Task task){
        tasks.remove(task);
    }
}
