.class public Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2, "toneId"    # I

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1668
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1669
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1670
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1671
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 1675
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1677
    const/4 v8, 0x0

    .line 1680
    .local v8, "toneType":I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1682
    .local v3, "phoneType":I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 1765
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1684
    :pswitch_0
    const/16 v8, 0x16

    .line 1685
    const/16 v9, 0x50

    .line 1687
    .local v9, "toneVolume":I
    const v7, 0x7fffffeb

    .line 1773
    .local v7, "toneLengthMillis":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v10, :cond_9

    .line 1774
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x6

    .line 1779
    .local v5, "stream":I
    :cond_0
    :goto_1
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    .end local v5    # "stream":I
    .local v6, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 1802
    .local v1, "needToStopTone":Z
    const/4 v2, 0x0

    .line 1804
    .local v2, "okToPlayTone":Z
    if-eqz v6, :cond_3

    .line 1805
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1806
    .local v4, "ringerMode":I
    if-ne v3, v14, :cond_f

    .line 1807
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_a

    .line 1808
    if-eqz v4, :cond_1

    if-eq v4, v13, :cond_1

    .line 1810
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1811
    const/4 v2, 0x1

    .line 1812
    const/4 v1, 0x0

    .line 1839
    :cond_1
    :goto_3
    monitor-enter p0

    .line 1840
    if-eqz v2, :cond_2

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_2

    .line 1841
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1842
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1844
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1849
    :goto_4
    if-eqz v1, :cond_2

    .line 1850
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1854
    :cond_2
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 1855
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1856
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1872
    .end local v4    # "ringerMode":I
    :cond_3
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_4

    .line 1873
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1875
    :cond_4
    return-void

    .line 1690
    .end local v1    # "needToStopTone":Z
    .end local v2    # "okToPlayTone":Z
    .end local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_1
    if-ne v3, v14, :cond_5

    .line 1691
    const/16 v8, 0x60

    .line 1692
    const/16 v9, 0x32

    .line 1693
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1694
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_5
    if-eq v3, v13, :cond_6

    const/4 v10, 0x3

    if-eq v3, v10, :cond_6

    const/4 v10, 0x4

    if-ne v3, v10, :cond_7

    .line 1697
    :cond_6
    const/16 v8, 0x11

    .line 1698
    const/16 v9, 0x50

    .line 1699
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1701
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_7
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1705
    :pswitch_2
    const/16 v8, 0x12

    .line 1706
    const/16 v9, 0x50

    .line 1707
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1708
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1711
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_3
    const/16 v8, 0x1b

    .line 1712
    const/16 v9, 0x50

    .line 1713
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 1714
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1716
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_8

    .line 1718
    const/16 v8, 0x5d

    .line 1719
    const/16 v9, 0x50

    .line 1720
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x2ee

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1722
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_8
    const/16 v8, 0x1b

    .line 1723
    const/16 v9, 0x50

    .line 1724
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 1726
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1728
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_5
    const/16 v8, 0x56

    .line 1729
    const/16 v9, 0x50

    .line 1730
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 1731
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1733
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_6
    const/16 v8, 0x26

    .line 1734
    const/16 v9, 0x50

    .line 1735
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1736
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1738
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_7
    const/16 v8, 0x25

    .line 1739
    const/16 v9, 0x32

    .line 1740
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1f4

    .line 1741
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1744
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_8
    const/16 v8, 0x5f

    .line 1745
    const/16 v9, 0x32

    .line 1746
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x177

    .line 1747
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1749
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_9
    const/16 v8, 0x57

    .line 1750
    const/16 v9, 0x32

    .line 1751
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 1752
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1754
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_a
    const/16 v8, 0x17

    .line 1755
    const/16 v9, 0x50

    .line 1757
    .restart local v9    # "toneVolume":I
    const v7, 0x7fffffeb

    .line 1758
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1760
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_b
    const/16 v8, 0x15

    .line 1761
    const/16 v9, 0x50

    .line 1762
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1763
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1777
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "stream":I
    goto/16 :goto_1

    .line 1781
    .end local v5    # "stream":I
    :catch_0
    move-exception v0

    .line 1782
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    const/4 v6, 0x0

    .restart local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 1814
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "needToStopTone":Z
    .restart local v2    # "okToPlayTone":Z
    .restart local v4    # "ringerMode":I
    :cond_a
    const/16 v10, 0x60

    if-eq v8, v10, :cond_b

    const/16 v10, 0x26

    if-eq v8, v10, :cond_b

    const/16 v10, 0x27

    if-eq v8, v10, :cond_b

    const/16 v10, 0x25

    if-eq v8, v10, :cond_b

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_c

    .line 1819
    :cond_b
    if-eqz v4, :cond_1

    .line 1820
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1821
    const/4 v2, 0x1

    .line 1822
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1824
    :cond_c
    const/16 v10, 0x57

    if-eq v8, v10, :cond_d

    const/16 v10, 0x56

    if-ne v8, v10, :cond_e

    .line 1826
    :cond_d
    if-eqz v4, :cond_1

    if-eq v4, v13, :cond_1

    .line 1828
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1829
    const/4 v2, 0x1

    .line 1830
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1833
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1836
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1845
    :catch_1
    move-exception v0

    .line 1846
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1856
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 1878
    monitor-enter p0

    .line 1879
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1880
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1882
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1883
    monitor-exit p0

    .line 1884
    return-void

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
