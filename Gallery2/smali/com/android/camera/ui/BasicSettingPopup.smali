.class public Lcom/android/camera/ui/BasicSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "BasicSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BasicSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/BasicSettingPopup$Listener;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "index"
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
    .line 119
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingPopup;->mListener:Lcom/android/camera/ui/BasicSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingPopup;->mListener:Lcom/android/camera/ui/BasicSettingPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/BasicSettingPopup$Listener;->onSettingChanged()V

    .line 121
    :cond_0
    return-void
.end method
