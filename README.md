TaskBoard application.

1. This apllication allows to create tasks for freelancers and discuss conditions of job before task is assigned to tasker and confirmed.
2. For now there are 2 roles of users that could be created after sign up: "Client" or "Tasker"
3. "Client" can create task with description, initial cost and deadline. "Tasker" can make offer and discuss task's conditions.
4. "Client" can choose the best offer and assign the task.
5. "Client" and "Tasker" can see each other location. (gmaps4rails gem)
6. When task finished "client" and "tasker" will left reviews to each other.(work in progress)
7. Amount of "balance" that task cost will be transferred from client's to tasker's balance.(work in progress)


		Associations created:
	1. Has_many
	2. Has_many :through.
	3. Polymorphic
	4. Has_one

![image_2023-04-20_13-01-53](https://user-images.githubusercontent.com/58646723/233437144-514a4a5f-b194-4048-b6b5-16acffc31dd1.png)
![image_2023-04-20_13-03-38](https://user-images.githubusercontent.com/58646723/233437508-5bc0fa72-38a2-4803-b2b9-1b4311e9c139.png)

