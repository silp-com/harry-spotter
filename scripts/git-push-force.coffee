# Description:
#   Posts a gif on git push force

module.exports = (robot) ->

  robot.hear /force-pushed/i, (msg) ->
    gifs = [
      'http://i.imgur.com/R7tEQPA.gif', # plow
      'http://i.imgur.com/2A3ihEW.gif', # guitar girls
      'http://media0.giphy.com/media/UP50mzg4TEydy/giphy.gif', # stripper
      'http://media.giphy.com/media/imBrYOiS14PLy/giphy.gif', # wet road
      'https://38.media.tumblr.com/524ec08a30e224d65258ec7a9c3aa80c/tumblr_ncxmzf5Abc1tmnd5po1_500.gif', # unstoppable bus
      'http://i.imgur.com/WwBxYiK.gif', # hamster
      'http://weknowmemes.com/wp-content/uploads/2012/07/holly-ellenbogen-stop-sign.gif', # stop sign
      'http://media.giphy.com/media/a6LWeFX6SuW4M/giphy.gif', # pushups
      'http://media.giphy.com/media/eB3bdGILNdlg4/giphy.gif', # bird turtle
      'http://tclhost.com/GBwrwr2.gif', # bus
      'http://s3-ec.buzzfed.com/static/2014-06/2/13/enhanced/webdr06/anigif_enhanced-31332-1401729396-1.gif', #face punch
      'http://s3-ec.buzzfed.com/static/2014-06/2/13/enhanced/webdr07/anigif_enhanced-buzz-20533-1401729943-22.gif', #through the car
      'http://s3-ec.buzzfed.com/static/2014-06/2/13/enhanced/webdr04/anigif_enhanced-buzz-21143-1401730045-4.gif', #moustache
      'http://s3-ec.buzzfed.com/static/2014-11/11/8/enhanced/webdr02/anigif_enhanced-buzz-10314-1415713122-21.gif', #flying jeep
      'http://s3-ec.buzzfed.com/static/2014-11/12/2/enhanced/webdr01/anigif_enhanced-buzz-8324-1415776951-20.gif', #train vs bike
      'http://i.imgur.com/vO8ntJK.gif', #fire extinguisher
      'http://media.giphy.com/media/y6Nc4RBVwRRC/giphy.gif', #wrestling

      # Obi-Wans
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/806/779/abe.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/806/279/09f.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/805/261/94f.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/714/082/b04.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/711/520/e34.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/564/315/600.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/564/151/7e5.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/454/672/bc6.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/428/349/8b4.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/218/089/tumblr_lwa2m3XLOT1qc2qk9o1_400.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/196/749/tumblr_luaj77Qaoa1qzrlhgo1_400.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/165/826/forced.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/126/392/1b2.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/030/906/28ltauo_th.jpg",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/896/Obi-wan_Force_move.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/888/1181688784694.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/882/64dfa35e.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/880/forcepushhomemade.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/879/basketball_dockingbay101.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/878/forcegun_dockingbay101.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/877/forcesaddam_dockingbay101.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/876/Forceorly_dockingbay101.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/875/action_figure_push_dockingbay101.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/874/serverus_snape_david_bowie_dockingbay101.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/873/men_in_black_dockingbay101.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/560/Nazijedi.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/559/Force_Push_Bike_2.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/558/starpig_dockingbay101.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/557/Force_Push_Kart.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/556/ForceSimpsonsBackfire_dockingbay101.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/555/Force_Push_Skater.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/554/RMDDDRFalling.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/553/goats_versus_david_bowie_dockingbay101.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/552/roller_coaster_crash_dockingbay101.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/551/force_push_2.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/550/Frap.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/548/2.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/547/power_of_the_force.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/546/1246086616961.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/545/11.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/544/piratesbf7.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/543/1246086511568.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/542/4GVF7MLWUNL5AWWWSCJTPIY2LKWSS3CK.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/541/LFOL6KIHJJR4XLEMGBWAPFUHIYFUADBY.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/540/CRIF4M4D5JMO3QP2JF3LK733QY3EXLRA.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/539/HRA2CLKDDQHHCYR6D5JOJJX352CRQJ5S.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/538/5FCNWPLR2O3TKTTMGSGJIXFERQTAEY2K.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/537/GPSVP6ZUIMO3L4DNXE3PRVWFLF2K3WGD.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/536/PTGADPES7KPU6GFI6I2JBKZP5J6X6COS.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/535/MHE2JVVEHTV7B26ZK6SBXCG6Q7IZMLKH.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/534/Q6WZVCEM3XEPUUUHXU7N5WAVC2PNY76X.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/533/QFM657VWLPT7D2QDM2SFA55LTUDOUPML.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/532/EEUHRRTWS6VFQYILQ5XZ4U6T6WOJUTQ5.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/531/JY7GJ6QQ5QVWDALO6D4YSMDZDRVKHMUJ.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/530/GTWNKFNDTB33ISNEGCP3Y2VD6L7DEOUA.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/529/HZTWM4YQJEQEWPTA5DNRS3EDE6UVEC3C.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/528/KIVV4PIU7EYTSKG2PPANJQKSH4P3G34T.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/527/EJYIRJ6ZYSYSRT643KAXQI2ZLOKW5HZK.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/526/7LSVGGR3L2XQMTP33Q63FRR5N6TORDRT.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/525/YO4GR5GVBFRSZGAWQHSSBT7L2UQJ46C3.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/524/25XSPPH4OGVT7DZT4IDLHHLEI3EHVTA4.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/523/GFSCIJEFDY4YHCVM3O7CFQO3GOQMNH56.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/522/JO6LIXMMMDOGB2K5DGA6KSI6ZYV4YMNI.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/521/N5IEH5ZW5KU7DHOEUTIVKB23JI4MY7XB.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/520/S2UEBFZG4WFWCU2PBPA4RG557YO4VCVH.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/519/NHJCYNWZ5LVHXEDZOC2UYLPFKDFOAHAW.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/517/3DLPYEPQQ4DTMW25PU7ENW2K5FJY7OHD.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/515/XYGRAKS4252F445XGQKJZG46RD5FEOKV.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/514/23KON3JFB5PJDHYOWRWASCMYXNFNGMPW.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/513/5EIMIH63B2RWA2WFFTXAXJBK7ZQCDHJB.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/512/J2IHAG6H5G7JTCCL4QXFTPSQTWBMMWLV.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/511/YAD5C24CKH4KUDNARJRIIN2LVOFED7EF.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/510/AICYUUKCIEYP3QTYOFNZ64SXNOUWY3JB.gif",
      "http://i0.kym-cdn.com/photos/images/newsfeed/000/014/509/MFV73DRWRBFS2WGA7PMRVYNITTMQB5R5.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/508/TIDNXYRDOO4GBDCZQHGCXF2ASF65STOV.gif",
      "http://i2.kym-cdn.com/photos/images/newsfeed/000/014/507/J6DT4Z2LVHUAW3BR7HGMNW26OWQP2CTC.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/506/AYON34XRWX72SNV2EAQE4CIV7U54SMRY.gif",
      "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/505/TOZX2UMFBNMRFDA552IBN4HXNATRODSQ.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/014/503/Z2737564U4ZQRIHUZYS2LZVDKXSXXYWE.gif",
    ]
    msg.send msg.random gifs
