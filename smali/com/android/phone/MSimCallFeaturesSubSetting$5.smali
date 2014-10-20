.class Lcom/android/phone/MSimCallFeaturesSubSetting$5;
.super Landroid/os/Handler;
.source "MSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1177
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1178
    .local v1, "result":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1196
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$600(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$500(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 1199
    .local v0, "done":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1200
    const-string v2, "All VM reverts done"

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    .line 1201
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    const/16 v3, 0x25b

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1400(Lcom/android/phone/MSimCallFeaturesSubSetting;I)V

    .line 1202
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->onRevertDone()V
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1600(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    .line 1204
    :cond_2
    return-void

    .line 1180
    .end local v0    # "done":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # setter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$502(Lcom/android/phone/MSimCallFeaturesSubSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1181
    const-string v2, "VM revert complete msg"

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$900(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in reverting fwd# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    .line 1191
    :goto_2
    const-string v2, "FWD revert complete msg "

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success in reverting fwd# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    goto :goto_2

    .line 1196
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1178
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
