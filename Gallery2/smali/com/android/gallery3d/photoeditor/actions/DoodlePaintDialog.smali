.class public Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;
.super Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;
.source "DoodlePaintDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;,
        Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;,
        Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;
    }
.end annotation


# instance fields
.field public final DEFAULT_PAINT_ALPHA:I

.field public final DEFAULT_PAINT_SIZE:I

.field public final MIN_PAINT_ALPHA:I

.field public final MIN_PAINT_SIZE:I

.field public final PAINTALPHA_SEEKBAR_MAX:I

.field public final PAINTSIZE_SEEKBAR_MAX:I

.field private mAnchorView:Landroid/view/View;

.field public final mDialogHeight:I

.field public final mDialogWidth:I

.field private mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;

.field private mSettingLayout:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

.field private final mYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->DEFAULT_PAINT_SIZE:I

    .line 31
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->MIN_PAINT_SIZE:I

    .line 32
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->PAINTSIZE_SEEKBAR_MAX:I

    .line 34
    const/16 v0, 0x98

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->DEFAULT_PAINT_ALPHA:I

    .line 35
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->MIN_PAINT_ALPHA:I

    .line 36
    const/16 v0, 0xcd

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->PAINTALPHA_SEEKBAR_MAX:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mYoffset:I

    .line 56
    const v0, 0x7f090160

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mDialogWidth:I

    .line 57
    const v0, 0x7f090161

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mDialogHeight:I

    .line 58
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mSettingLayout:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mSettingLayout:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;

    return-object v0
.end method


# virtual methods
.method public getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public setOnDoodlePaintParamsListener(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;

    .line 76
    return-void
.end method

.method public show(Landroid/view/View;IZ)V
    .locals 5
    .parameter "anchor"
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mAnchorView:Landroid/view/View;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 67
    if-eqz p3, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mYoffset:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mDialogWidth:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mYoffset:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public update(IZ)V
    .locals 1
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->show(Landroid/view/View;IZ)V

    .line 84
    return-void
.end method
