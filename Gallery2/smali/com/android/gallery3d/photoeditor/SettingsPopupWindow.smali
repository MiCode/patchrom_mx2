.class public Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;
.super Ljava/lang/Object;
.source "SettingsPopupWindow.java"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field protected final mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    const/4 v1, 0x1

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow$1;-><init>(Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 3
    .parameter "anchor"

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mAnchor:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 46
    return-void
.end method
