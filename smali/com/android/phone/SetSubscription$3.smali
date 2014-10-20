.class Lcom/android/phone/SetSubscription$3;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    .line 290
    move-object v4, p1

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 291
    .local v4, "subPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "key":Ljava/lang/String;
    const-string v5, "SetSubscription"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubscription: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "splitKey":[Ljava/lang/String;
    aget-object v5, v3, v8

    aget-object v6, v3, v8

    const-string v7, "slot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "sSlotId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 297
    .local v2, "slotIndex":I
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    iget-object v5, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v5, v5, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 299
    iget-object v5, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v5, v5, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    aget-object v5, v5, v2

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    :cond_0
    iget-object v5, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v5, v5, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    aput-object v4, v5, v2

    .line 305
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 303
    :cond_1
    iget-object v5, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v5, v5, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    goto :goto_0
.end method
