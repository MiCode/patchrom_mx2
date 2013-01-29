.class public abstract Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.super Landroid/widget/LinearLayout;
.source "EffectAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;,
        Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    }
.end annotation


# instance fields
.field private backgroundBitmap:Landroid/graphics/drawable/Drawable;

.field private disableFilterOutput:Z

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

.field private listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;

.field private pushedFilter:Z

.field private replaceable:Z

.field protected toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->backgroundBitmap:Landroid/graphics/drawable/Drawable;

    .line 66
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->close()V

    .line 157
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    .line 161
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 162
    return-void
.end method


# virtual methods
.method public begin(Landroid/view/View;Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;Z)V
    .locals 2
    .parameter "root"
    .parameter "filterStack"
    .parameter "listener"
    .parameter "hasToolPannel"

    .prologue
    .line 75
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    const v0, 0x7f0d0113

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, p1, v0, p4}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    .line 76
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 77
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;

    .line 85
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->prepare()V

    .line 86
    return-void
.end method

.method public clearImageButtonBounds()V
    .locals 2

    .prologue
    .line 107
    const v0, 0x7f0d0114

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method protected disableFilterOutput()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    .line 167
    return-void
.end method

.method public drawImageButtonBounds()V
    .locals 2

    .prologue
    .line 101
    const v0, 0x7f0d0114

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->backgroundBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method public end(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnableOnODone"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->cancel()V

    .line 137
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->outputFilter()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->done:Z
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->access$000(Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V

    #setter for: Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->access$102(Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public findFilterInStack(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, name:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->findFilterInStack(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasToolPannel()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f0d0113

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 177
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->popFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)Z

    move-result v1

    .line 178
    .local v1, isApplied:Z
    if-eqz v1, :cond_0

    .line 179
    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/EffectAction$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$2;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 187
    :cond_0
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->replaceable:Z

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/photoeditor/filters/Filter;->setReplaceable(Z)V

    .line 188
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->replaceFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)Z

    move-result v2

    .line 189
    .local v2, isNeedReplace:Z
    if-eqz v2, :cond_2

    .line 190
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$3;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 194
    .local v0, callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->doAll(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 205
    .end local v0           #callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-nez v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->pushFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 200
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    .line 202
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    if-nez v3, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->outputFilter()V

    goto :goto_0
.end method

.method protected notifyOk()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;->onOk()V

    .line 209
    return-void
.end method

.method protected outputFilter()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->topFilterChanged(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 173
    return-void
.end method

.method protected abstract prepare()V
.end method

.method public setReplaceable(Z)V
    .locals 0
    .parameter "replaceable"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->replaceable:Z

    .line 113
    return-void
.end method
