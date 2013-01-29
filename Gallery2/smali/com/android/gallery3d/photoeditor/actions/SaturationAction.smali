.class public Lcom/android/gallery3d/photoeditor/actions/SaturationAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SaturationAction.java"


# instance fields
.field private commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/SaturationAction;)Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    return-object v0
.end method


# virtual methods
.method getFilter([F)Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;
    .locals 3
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->findFilterInStack(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;-><init>()V

    .line 41
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getSaturation()F

    move-result v2

    aput v2, p1, v1

    .line 42
    return-object v0
.end method

.method public prepare()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    const/4 v3, 0x1

    new-array v1, v3, [F

    const/4 v3, 0x0

    aput v3, v1, v5

    .line 48
    .local v1, scale:[F
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->getFilter([F)Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;

    move-result-object v0

    .line 50
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    sget-object v4, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->LIGHT:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addScalePicker(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    move-result-object v2

    .line 51
    .local v2, scalePicker:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;

    invoke-direct {v3, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/SaturationAction;Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setOnScaleChangeListener(Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;)V

    .line 62
    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setProgress(F)V

    .line 63
    return-void
.end method
