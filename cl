def vote(port, projectName):
    chrome_options = Options()
    chrome_options.add_experimental_option("debuggerAddress", "localhost:{}".format(port))
    driver = webdriver.Chrome(options=chrome_options)

    try:
        driver.minimize_window()
        driver.maximize_window()
    except:
        print("捕捉到最大化最小化浏览器失败，继续")

    main_wd_handle = driver.current_window_handle
