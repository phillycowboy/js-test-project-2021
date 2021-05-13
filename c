
[1mFrom:[0m /mnt/c/Users/benha/Development/code/Mod4-PT-JS-COHORT/test-project-parent/test-project-back-end/app/controllers/tasks_controller.rb:34 TasksController#update:

    [1;34m32[0m: [32mdef[0m [1;34mupdate[0m
    [1;34m33[0m:     task = [1;34;4mTask[0m.find_by([35mid[0m: params[[33m:id[0m])
 => [1;34m34[0m:     binding.pry
    [1;34m35[0m:     [32mif[0m task && task.update(task_params)
    [1;34m36[0m:         render [35mjson[0m: {[35mtask[0m: task}
    [1;34m37[0m:     [32melse[0m 
    [1;34m38[0m:         render [35mjson[0m: {[35merror[0m: [31m[1;31m"[0m[31mTask could not be updated[1;31m"[0m[31m[0m}
    [1;34m39[0m:     [32mend[0m
    [1;34m40[0m: [32mend[0m

