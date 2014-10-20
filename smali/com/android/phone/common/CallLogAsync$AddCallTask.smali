.class Lcom/android/phone/common/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/common/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/common/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/common/CallLogAsync;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/common/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/common/CallLogAsync;Lcom/android/phone/common/CallLogAsync$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/common/CallLogAsync;
    .param p2, "x1"    # Lcom/android/phone/common/CallLogAsync$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/phone/common/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/common/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, [Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/common/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/common/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/common/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .locals 16
    .param p1, "callList"    # [Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    .prologue
    .line 162
    move-object/from16 v0, p1

    array-length v12, v0

    .line 163
    .local v12, "count":I
    new-array v15, v12, [Landroid/net/Uri;

    .line 164
    .local v15, "result":[Landroid/net/Uri;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_0

    .line 165
    aget-object v11, p1, v14

    .line 169
    .local v11, "c":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    :try_start_0
    iget-object v1, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v4, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iget v5, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v6, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    iget v8, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iget v9, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->subscription:I

    iget v10, v11, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationType:I

    invoke-static/range {v1 .. v10}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v15, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v13

    .line 179
    .local v13, "e":Ljava/lang/Exception;
    const-string v1, "CallLogAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception raised during adding CallLog entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    aput-object v1, v15, v14

    goto :goto_1

    .line 183
    .end local v11    # "c":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/common/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6
    .param p1, "result"    # [Landroid/net/Uri;

    .prologue
    .line 191
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 192
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 193
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method
