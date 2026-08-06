13:11:07  Running with dbt=1.12.0
13:11:09  Registered adapter: snowflake=1.12.0
13:11:11  Found 4 models, 4 data tests, 3 sources, 545 macros
13:11:11  
13:11:11  Concurrency: 4 threads (target='dev')
13:11:11  
13:11:14  1 of 1 START sql view model RAW.stg_orders ..................................... [RUN]
13:11:14  1 of 1 ERROR creating sql view model RAW.stg_orders ............................ [ERROR in 0.82s]
13:11:15  
13:11:15  Finished running 1 view model in 0 hours 0 minutes and 4.49 seconds (4.49s).
13:11:15  
13:11:15  Completed with 1 error, 0 partial successes, and 0 warnings:
13:11:15  
13:11:15  [ERROR]: in model stg_orders (models\staging\stg_orders.sql)
13:11:15    Database Error in model stg_orders (models\staging\stg_orders.sql)
  000904 (42000): SQL compilation error: error line 15 at position 0
  invalid identifier 'AMOUNT'
  compiled code at target\run\retail_project\models\staging\stg_orders.sql
13:11:16  
13:11:16    compiled code at target\compiled\retail_project\models\staging\stg_orders.sql
13:11:16  
13:11:16  Done. PASS=0 WARN=0 ERROR=1 SKIP=0 NO-OP=0 REUSED=0 TOTAL=1
