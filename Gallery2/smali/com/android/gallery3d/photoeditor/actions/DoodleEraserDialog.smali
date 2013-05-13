.class public Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;
.super Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;
.source "DoodleEraserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;
    }
.end annotation


# instance fields
.field public final DEFAULT_ERASER_SIZE:I

.field public final ERASER_SEEKBAR_MAX:I

.field public final MIN_ERASER_SIZE:I

.field private mAnchorView:Landroid/view/View;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClearDoodleButton:Landroid/widget/Button;

.field public final mDialogWidth:I

.field private mEraserBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mEraserPaintSize:I

.field private mEraserSizeBar:Landroid/widget/SeekBar;

.field private mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

.field private mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;

.field private mWindowContentView:Landroid/view/View;

.field private final mYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->DEFAULT_ERASER_SIZE:I

    .line 16
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->MIN_ERASER_SIZE:I

    .line 17
    const/16 v1, 0x23

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->ERASER_SEEKBAR_MAX:I

    .line 91
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$2;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mYoffset:I

    .line 41
    const v1, 0x7f0902ed

    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mDialogWidth:I

    .line 43
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f040051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mWindowContentView:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mWindowContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->initViews(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeBar:Landroid/widget/SeekBar;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mClearDoodleButton:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mClearDoodleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPreviewMode(I)V

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    const v1, 0x7f0902ef

    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f0902f0

    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setRectSize(II)V

    .line 58
    return-void
.end method


# virtual methods
.method public getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public setEraserPaintSize(I)V
    .locals 2
    .parameter "paintSize"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserPaintSize:I

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserPaintSize:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPaintSize(I)V

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserSizeBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mEraserPaintSize:I

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    return-void
.end method

.method public setOnEraserParamsListener(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;

    .line 62
    return-void
.end method

.method public show(Landroid/view/View;IZ)V
    .locals 5
    .parameter "anchor"
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mAnchorView:Landroid/view/View;

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->showAsDropDown(Landroid/view/View;)V

    .line 69
    if-eqz p3, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mYoffset:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mDialogWidth:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mYoffset:I

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
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->show(Landroid/view/View;IZ)V

    .line 83
    return-void
.end method
