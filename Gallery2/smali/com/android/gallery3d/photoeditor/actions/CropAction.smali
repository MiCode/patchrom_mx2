.class public Lcom/android/gallery3d/photoeditor/actions/CropAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "CropAction.java"


# instance fields
.field private filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/CropAction;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    return-object v0
.end method


# virtual methods
.method getFilter(Landroid/graphics/RectF;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->findFilterInStack(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->getCropBounds()Landroid/graphics/RectF;

    .line 45
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;-><init>()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 4

    .prologue
    const v3, 0x3f4ccccd

    const v2, 0x3e4ccccd

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 52
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->getFilter(Landroid/graphics/RectF;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->disableFilterOutput()V

    .line 55
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addCropView()Lcom/android/gallery3d/photoeditor/actions/CropView;

    move-result-object v1

    .line 56
    .local v1, cropView:Lcom/android/gallery3d/photoeditor/actions/CropView;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/CropAction;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->setOnCropChangeListener(Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->setCropBounds(Landroid/graphics/RectF;)V

    .line 69
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->setCropBounds(Landroid/graphics/RectF;)V

    .line 70
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 71
    return-void
.end method
