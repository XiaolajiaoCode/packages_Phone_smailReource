.class Lcom/android/phone/EmergencyCallList$2;
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
    .line 147
    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    iput-object p2, p0, Lcom/android/phone/EmergencyCallList$2;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList$2;->val$number:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$2;->val$number:Ljava/lang/String;

    # invokes: Lcom/android/phone/EmergencyCallList;->deleteEmergencyNumber(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyCallList;->access$000(Lcom/android/phone/EmergencyCallList;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method
