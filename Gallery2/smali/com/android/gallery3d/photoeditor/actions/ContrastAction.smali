.class public Lcom/android/gallery3d/photoeditor/actions/ContrastAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "ContrastAction.java"


# instance fields
.field private commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/ContrastAction;)Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    return-object v0
.end method


# virtual methods
.method getFilter([F)Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;
    .locals 3
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->findFilterInStack(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    .line 19
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;-><init>()V

    .line 22
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getContrast()F

    move-result v2

    aput v2, p1, v1

    .line 23
    return-object v0
.end method

.method public prepare()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 28
    const/4 v3, 0x1

    new-array v1, v3, [F

    const/4 v3, 0x0

    aput v3, v1, v5

    .line 29
    .local v1, scale:[F
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->getFilter([F)Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    move-result-object v0

    .line 31
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    sget-object v4, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->LIGHT:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addScalePicker(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    move-result-object v2

    .line 32
    .local v2, scalePicker:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;

    invoke-direct {v3, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/ContrastAction;Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setOnScaleChangeListener(Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;)V

    .line 43
    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setProgress(F)V

    .line 44
    return-void
.end method
