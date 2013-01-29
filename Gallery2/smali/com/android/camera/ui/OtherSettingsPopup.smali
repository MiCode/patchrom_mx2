.class public Lcom/android/camera/ui/OtherSettingsPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "OtherSettingsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/OtherSettingsPopup$Listener;
    }
.end annotation


# instance fields
.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    .line 96
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onRestorePreferencesClicked()V

    .line 144
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onSettingChanged()V

    .line 119
    :cond_0
    return-void
.end method
