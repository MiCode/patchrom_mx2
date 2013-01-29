.class public abstract Lcom/android/camera/ui/InLineSettingItem;
.super Landroid/widget/LinearLayout;
.source "InLineSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/InLineSettingItem$Listener;
    }
.end annotation


# instance fields
.field protected mIndex:I

.field private mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected changeIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 68
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onSettingChanged()V

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 74
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingItem;->sendAccessibilityEvent(I)V

    .line 75
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract updateView()V
.end method
