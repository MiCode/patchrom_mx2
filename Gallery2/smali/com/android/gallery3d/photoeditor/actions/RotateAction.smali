.class public Lcom/android/gallery3d/photoeditor/actions/RotateAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "RotateAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;-><init>()V

    .line 41
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->disableFilterOutput()V

    .line 43
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addRotateView()Lcom/android/gallery3d/photoeditor/actions/RotateView;

    move-result-object v1

    .line 44
    .local v1, rotateView:Lcom/android/gallery3d/photoeditor/actions/RotateView;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/RotateAction;Lcom/android/gallery3d/photoeditor/filters/RotateFilter;Lcom/android/gallery3d/photoeditor/actions/RotateView;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setOnRotateChangeListener(Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setRotatedAngle(F)V

    .line 92
    const/high16 v2, 0x43b4

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setRotateSpan(F)V

    .line 93
    return-void
.end method
