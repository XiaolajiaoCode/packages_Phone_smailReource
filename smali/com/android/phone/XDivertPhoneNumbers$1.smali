.class Lcom/android/phone/XDivertPhoneNumbers$1;
.super Ljava/lang/Object;
.source "XDivertPhoneNumbers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/XDivertPhoneNumbers;->displayAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertPhoneNumbers;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertPhoneNumbers;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/XDivertPhoneNumbers$1;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 99
    const-string v0, "XDivertPhoneNumbers"

    const-string v1, "XDivertPhoneNumbers onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers$1;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-virtual {v0}, Lcom/android/phone/XDivertPhoneNumbers;->finish()V

    .line 101
    return-void
.end method
