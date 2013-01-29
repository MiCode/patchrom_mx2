.class public Lcom/android/gallery3d/photoeditor/actions/ReminisenceAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "ReminisenceAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-void
.end method


# virtual methods
.method public hasToolPannel()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/ReminisenceFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/ReminisenceFilter;-><init>()V

    .line 15
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/ReminisenceFilter;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ReminisenceAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ReminisenceAction;->notifyOk()V

    .line 17
    return-void
.end method
