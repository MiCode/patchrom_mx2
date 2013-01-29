.class public Lcom/android/gallery3d/photoeditor/actions/StraightenAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "StraightenAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method getFilter([F)Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;
    .locals 3
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->findFilterInStack(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->getAngle()F

    move-result v2

    aput v2, p1, v1

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;-><init>()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-array v0, v5, [F

    const/4 v3, 0x0

    aput v3, v0, v4

    .line 49
    .local v0, degrees:[F
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->getFilter([F)Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    move-result-object v1

    .line 51
    .local v1, filter:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addRotateView()Lcom/android/gallery3d/photoeditor/actions/RotateView;

    move-result-object v2

    .line 52
    .local v2, rotateView:Lcom/android/gallery3d/photoeditor/actions/RotateView;
    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/StraightenAction;Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setOnRotateChangeListener(Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;)V

    .line 72
    invoke-virtual {v2, v5}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setDrawGrids(Z)V

    .line 73
    aget v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setRotatedAngle(F)V

    .line 74
    const/high16 v3, 0x42b4

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setRotateSpan(F)V

    .line 75
    return-void
.end method
