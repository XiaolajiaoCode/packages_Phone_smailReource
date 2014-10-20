.class Lcom/android/phone/MSimCallFeaturesSubSetting$4;
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
    .line 1110
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1113
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1114
    .local v4, "result":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 1115
    .local v1, "done":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1161
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1162
    const-string v5, "All VM provider related changes done"

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    .line 1163
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$900(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1164
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    const/16 v6, 0x259

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1400(Lcom/android/phone/MSimCallFeaturesSubSetting;I)V

    .line 1166
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1500(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    .line 1168
    :cond_2
    return-void

    .line 1117
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # setter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v7, v4}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$502(Lcom/android/phone/MSimCallFeaturesSubSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1118
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$700(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    # setter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v7, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$602(Lcom/android/phone/MSimCallFeaturesSubSetting;Z)Z

    .line 1119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM change complete msg, VM change done = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$600(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    .line 1121
    const/4 v1, 0x1

    .line 1122
    goto :goto_0

    .line 1124
    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$900(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 1126
    const-string v7, "MSimCallFeaturesSubSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in setting fwd# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_1
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->checkForwardingCompleted()Z
    invoke-static {v7}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z

    move-result v0

    .line 1132
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 1133
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1100(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1134
    const-string v5, "Overall fwd changes completed ok, starting vm change"

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    .line 1135
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1200(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    goto/16 :goto_0

    .line 1129
    .end local v0    # "completed":Z
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Success in setting fwd# "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$800(Ljava/lang/String;)V

    goto :goto_1

    .line 1137
    .restart local v0    # "completed":Z
    :cond_5
    const-string v7, "MSimCallFeaturesSubSetting"

    const-string v8, "Overall fwd changes completed in failure. Check if we need to try rollback for some settings."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # setter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v7, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1302(Lcom/android/phone/MSimCallFeaturesSubSetting;Z)Z

    .line 1140
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$900(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1142
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1143
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1144
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 1146
    const-string v5, "MSimCallFeaturesSubSetting"

    const-string v7, "Rollback will be required"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # setter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v5, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1302(Lcom/android/phone/MSimCallFeaturesSubSetting;Z)Z

    .line 1151
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$1300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1152
    const-string v5, "MSimCallFeaturesSubSetting"

    const-string v6, "No rollback needed."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_8
    const/4 v1, 0x1

    .line 1155
    goto/16 :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
