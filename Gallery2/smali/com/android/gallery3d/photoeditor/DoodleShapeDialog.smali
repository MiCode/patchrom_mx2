.class public Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;
.super Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;
.source "DoodleShapeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;,
        Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;,
        Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mLayout:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field public mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;

.field private mSelectedColor:I

.field private mSelectedShape:I

.field private final mYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    .line 41
    const v0, -0x2fd2d3

    iput v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    .line 57
    const v0, 0x7f0901b9

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mYoffset:I

    .line 58
    const v0, 0x7f090183

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutWidth:I

    .line 59
    const v0, 0x7f090184

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutHeight:I

    .line 60
    new-instance v0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayout:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayout:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    return p1
.end method

.method private getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public setOnShapeChangeListener(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;

    .line 86
    return-void
.end method

.method public show(Landroid/view/View;IZ)V
    .locals 5
    .parameter "anchor"
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mAnchorView:Landroid/view/View;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 69
    if-eqz p3, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mYoffset:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutWidth:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mYoffset:I

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
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->show(Landroid/view/View;IZ)V

    .line 78
    return-void
.end method
