.class Lcom/android/phone/EmergencyCallList$1;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallList;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    iput-object p2, p0, Lcom/android/phone/EmergencyCallList$1;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$1;->val$number:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/EmergencyCallList$1;->val$number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-virtual {v1, v0}, Lcom/android/phone/EmergencyCallList;->startActivity(Landroid/content/Intent;)V

    .line 140
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyCallList;->finish()V

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
