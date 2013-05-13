.class public Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;
.super Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;
.source "DoodlePaintDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    }
.end annotation


# instance fields
.field public final DEFAULT_PAINT_ALPHA:I

.field public final MIN_PAINT_ALPHA:I

.field public final MIN_PAINT_SIZE:I

.field private mAnchorView:Landroid/view/View;

.field private mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;

.field private mColorPickerBtn:Landroid/widget/ImageView;

.field public final mDialogWidth:I

.field private mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

.field private mPaintAlpha:I

.field private mPaintAlphaBar:Landroid/widget/SeekBar;

.field private mPaintColor:I

.field private mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

.field private mPaintSizeBar:Landroid/widget/SeekBar;

.field private mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mWindowContentView:Landroid/view/View;

.field private final mYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x98

    .line 48
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->MIN_PAINT_SIZE:I

    .line 20
    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->DEFAULT_PAINT_ALPHA:I

    .line 21
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->MIN_PAINT_ALPHA:I

    .line 38
    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I

    .line 139
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mYoffset:I

    .line 50
    const v1, 0x7f0902ce

    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mDialogWidth:I

    .line 52
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mWindowContentView:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mWindowContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->initViews()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlphaBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintSizeBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintColor:I

    return v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintSizeBar:Landroid/widget/SeekBar;

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintSizeBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlphaBar:Landroid/widget/SeekBar;

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlphaBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setRectSize(II)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPreviewMode(I)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->setDoodleColorPenChangedListener(Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen$DoodleColorPenChanged;)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mWindowContentView:Landroid/view/View;

    const v1, 0x7f0d0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mColorPickerBtn:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mColorPickerBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$2;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public locateColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorPen;->locateColor(I)V

    .line 137
    return-void
.end method

.method public refreshPaintColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintColor:I

    if-eq v0, p1, :cond_0

    .line 121
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintColor:I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPaintColor(II)V

    .line 124
    return-void
.end method

.method public setOnDoodlePaintParamsListener(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    .line 109
    return-void
.end method

.method public setPathPaintParams(III)V
    .locals 2
    .parameter "paintColor"
    .parameter "paintAlpha"
    .parameter "paintSize"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintColor:I

    .line 128
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPaintColor(II)V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPaintSize(I)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintSizeBar:Landroid/widget/SeekBar;

    add-int/lit8 v1, p3, -0x6

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlphaBar:Landroid/widget/SeekBar;

    add-int/lit8 v1, p2, -0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    return-void
.end method

.method public show(Landroid/view/View;IZ)V
    .locals 5
    .parameter "anchor"
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mAnchorView:Landroid/view/View;

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->showAsDropDown(Landroid/view/View;)V

    .line 100
    if-eqz p3, :cond_1

    .line 101
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

    .line 105
    :goto_0
    return-void

    .line 103
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
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->show(Landroid/view/View;IZ)V

    .line 117
    return-void
.end method
