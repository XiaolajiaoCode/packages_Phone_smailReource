.class Lcom/android/phone/MSimCallFeaturesSubSetting$1;
.super Landroid/text/method/NumberKeyListener;
.source "MSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 474
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$1;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 2

    .prologue
    .line 482
    const/16 v1, 0x18

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    .line 485
    .local v0, "acceptedChars":[C
    return-object v0

    .line 482
    :array_0
    .array-data 2
        0x50s
        0x54s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
        0x2bs
        0x2ds
        0x28s
        0x29s
        0x2cs
        0x2fs
        0x4es
        0x2es
        0x20s
        0x3bs
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x3

    return v0
.end method
