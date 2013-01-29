.class public Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;
.super Ljava/lang/Object;
.source "EffectToolKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$2;,
        Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private final toolFullscreen:Landroid/view/ViewGroup;

.field private final toolPanel:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 7
    .parameter "root"
    .parameter "label"
    .parameter "hasToolPanel"

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    .line 55
    const v4, 0x7f0d0121

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    .local v0, effectsBar:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040052

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 65
    :cond_0
    const v4, 0x7f0d0120

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/photoeditor/PhotoView;

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 66
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/PhotoView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 67
    .local v3, parent:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040051

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    .line 70
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 72
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_1

    .line 74
    sget v4, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 78
    :goto_0
    sget v4, Lcom/android/gallery3d/photoeditor/PhotoEditor;->STATUS_BAR_HEIGHT:I

    sget v5, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 80
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 81
    return-void

    .line 76
    :cond_1
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private addFullscreenTool(I)Landroid/view/View;
    .locals 4
    .parameter "toolId"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;

    .line 128
    .local v0, tool:Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->getPhotoView()Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 129
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    return-object v0
.end method

.method private addPanelTool(I)Landroid/view/View;
    .locals 5
    .parameter "toolId"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, tool:Landroid/view/View;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    const v4, 0x7f0d0113

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 137
    return-object v0
.end method

.method private getScalePickerProgressDrawable(Landroid/content/res/Resources;Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"
    .parameter "type"

    .prologue
    .line 141
    sget-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$2;->$SwitchMap$com$android$gallery3d$photoeditor$actions$EffectToolKit$ScaleType:[I

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 154
    const v0, 0x7f02015f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    const v0, 0x7f020160

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_1
    const v0, 0x7f020162

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_2
    const v0, 0x7f02015e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_3
    const v0, 0x7f020161

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addColorPicker()Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f04004d

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addPanelTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    return-object v0
.end method

.method public addCropView()Lcom/android/gallery3d/photoeditor/actions/CropView;
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f04004e

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/CropView;

    return-object v0
.end method

.method public addDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f040050

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    return-object v0
.end method

.method public addFlipView()Lcom/android/gallery3d/photoeditor/actions/FlipView;
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f04005a

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/FlipView;

    return-object v0
.end method

.method public addRotateView()Lcom/android/gallery3d/photoeditor/actions/RotateView;
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f04005d

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/RotateView;

    return-object v0
.end method

.method public addScalePicker(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    .locals 2
    .parameter "type"

    .prologue
    .line 158
    const v1, 0x7f04005e

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addPanelTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    .line 160
    .local v0, scalePicker:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->getScalePickerProgressDrawable(Landroid/content/res/Resources;Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    return-object v0
.end method

.method public cancel()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 97
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 100
    new-instance v9, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$1;

    invoke-direct {v9, p0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;)V

    .line 108
    .local v9, listener:Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_1
    return-void
.end method

.method public getPhotoView()Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method
