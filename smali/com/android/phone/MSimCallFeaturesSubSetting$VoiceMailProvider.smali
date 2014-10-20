.class Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "MSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 271
    return-void
.end method
