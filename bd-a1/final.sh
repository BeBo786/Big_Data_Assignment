docker exec 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040 python3 /home/doc-bd-a1/load.py
docker exec 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040 python3 /home/doc-bd-a1/dpre.py
docker exec 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040 python3 /home/doc-bd-a1/eda.py
docker exec 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040 python3 /home/doc-bd-a1/vis.py
docker exec 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040 python3 /home/doc-bd-a1/model.py

# Copy output files from the container to the local machine
docker cp 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040:/home/doc-bd-a1/insights G:/bd-a1/service-result/
docker cp 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040:/home/insights G:/bd-a1/service-result/
docker cp 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040:/home/doc-bd-a1/titanic_dpre.csv G:/bd-a1/service-result/
docker cp 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040:/home/age_distribution.png G:/bd-a1/service-result/
docker cp 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040:/home/pclass_distribution.png G:/bd-a1/service-result/

# Stop the container
docker stop 1721b0f2276868d4bd9c959e4d817d71e19785e72787bf874f216b355f78d040