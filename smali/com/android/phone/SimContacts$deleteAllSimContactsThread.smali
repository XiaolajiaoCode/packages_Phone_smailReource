.class Lcom/android/phone/SimContacts$deleteAllSimContactsThread;
.super Ljava/lang/Thread;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "deleteAllSimContactsThread"
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 1

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    .line 421
    const-string v0, "deleteAllSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->mCanceled:Z

    .line 422
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->mCanceled:Z

    .line 440
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 443
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->mCanceled:Z

    .line 445
    iget-object v0, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    # getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    const-string v0, "SimContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button event has come: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 426
    const/4 v1, 0x1

    .line 427
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, v2, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 428
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->mCanceled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, v2, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v3, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v3, v3, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    # invokes: Lcom/android/phone/SimContacts;->actuallyDeleteOneSimContact(Landroid/database/Cursor;)I
    invoke-static {v2, v3}, Lcom/android/phone/SimContacts;->access$300(Lcom/android/phone/SimContacts;Landroid/database/Cursor;)I

    move-result v2

    and-int/2addr v1, v2

    .line 430
    iget-object v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    # getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    # getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 434
    iget-object v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    # getter for: Lcom/android/phone/SimContacts;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$400(Lcom/android/phone/SimContacts;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 435
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    # getter for: Lcom/android/phone/SimContacts;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$400(Lcom/android/phone/SimContacts;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method
