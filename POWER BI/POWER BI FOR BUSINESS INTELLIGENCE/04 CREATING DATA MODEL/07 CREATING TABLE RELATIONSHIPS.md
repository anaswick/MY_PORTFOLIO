# CREATING TABLE RELATIONSHIPS


![1](https://github.com/anaswick/my_portfolio/assets/24541471/d8dc596f-e621-47fd-acc5-7f8e58368c97)

**OPTION 1** : Click and drag to connect primary and foreign keys within the **Model View**

![2](https://github.com/anaswick/my_portfolio/assets/24541471/9fd189d2-546c-44a3-b1c7-29a27ae52f36)

**OPTION 2** : add or detect relationships using the **Manage Relationships** dialog box

![3](https://github.com/anaswick/my_portfolio/assets/24541471/8925d78e-ca86-490f-8f4d-a1bfeae7f0af)

## TUTORIAL

We will use **Option 2** first

1. Click on **manage relationships** on menu ribbon
![4](https://github.com/anaswick/my_portfolio/assets/24541471/62ef768f-97ea-4561-99e2-170e4445625a)

2. A window pop up will appear, you can choose between New or Autodetect
- New : you manuall define the relationships between each tables
- Autodetect : you ask Power BI to automatically detect relationships between each tables. Sometimes it does mistakes. For educational purpose we suggest you to use manual way.

Click New then

![5](https://github.com/anaswick/my_portfolio/assets/24541471/91326117-c7b6-425f-952e-e0ac4d3debe2)

3. Choose which tables you want to connect

![6](https://github.com/anaswick/my_portfolio/assets/24541471/884033da-6e70-4ed2-89ba-61d344d5dd5f)

4. After that, Power BI will automatically detect which one is the primary and foreign keys. In this case **CustomerKey**

![7](https://github.com/anaswick/my_portfolio/assets/24541471/0760896e-1a3c-4659-b9fe-2acfe4dc3013)

5. The result will look like this

![8](https://github.com/anaswick/my_portfolio/assets/24541471/803710de-24d7-44cb-8725-9110a74af131)

6. We can also do this with the option one, please drag **TerritoryKey** from Sales data to Territory Lookup, and done

![9](https://github.com/anaswick/my_portfolio/assets/24541471/285cc62c-af38-4f7c-a061-61b20286403f)


7. Next we will connect Sales Data with Calendar Lookup, just drag **Order Date** from Sales Data to **Date** from Calendar Lookup.

![10](https://github.com/anaswick/my_portfolio/assets/24541471/4f3a1c82-f45f-4cac-bc18-bbf5fc71f8cc)

8. Next we will connect Sales Data with Product Lookup, just drag **ProductKey** from Sales Data to **ProductKey** from Product Lookup.

![11](https://github.com/anaswick/my_portfolio/assets/24541471/bf68fa1c-92ae-416b-9a37-2c46f22604d4)

Now the error on our previous Pivot Table is solved

![12](https://github.com/anaswick/my_portfolio/assets/24541471/266375e2-3d77-4468-b043-dc867b5b8135)


9. Voila, it's done

![13](https://github.com/anaswick/my_portfolio/assets/24541471/5143ec99-c478-4ea5-ac77-d60c689ef790)















