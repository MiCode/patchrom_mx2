.class public Lcom/meizu/app/TabActivityPlus;
.super Landroid/app/ActivityGroup;
.source "TabActivityPlus.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/meizu/widget/TabHostPlus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTab:Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTabIndex:I

    .line 39
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    if-nez v0, :cond_0

    .line 127
    const v0, 0x10900f3

    invoke-virtual {p0, v0}, Lcom/meizu/app/TabActivityPlus;->setContentView(I)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/meizu/app/TabActivityPlus;->onBackPressed()V

    .line 142
    return-void
.end method

.method public getTabHost()Lcom/meizu/widget/TabHostPlus;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/meizu/app/TabActivityPlus;->ensureTabHost()V

    .line 151
    iget-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    return-object v0
.end method

.method public getTabWidget()Lcom/meizu/widget/TabWidgetPlus;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus;->getTabWidget()Lcom/meizu/widget/TabWidgetPlus;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/meizu/app/TabActivityPlus;->getTabHost()Lcom/meizu/widget/TabHostPlus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/TabHostPlus;->onBackPressed()Z

    move-result v0

    .line 177
    .local v0, result:Z
    if-nez v0, :cond_0

    .line 178
    invoke-super {p0}, Landroid/app/ActivityGroup;->onBackPressed()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/meizu/app/TabActivityPlus;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 135
    invoke-virtual {p0, p2}, Lcom/meizu/app/TabActivityPlus;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 115
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/meizu/app/TabActivityPlus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/TabHostPlus;

    iput-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    .line 117
    iget-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHostPlus whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {p0}, Lcom/meizu/app/TabActivityPlus;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/TabHostPlus;->setup(Landroid/app/LocalActivityManager;)V

    .line 123
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/meizu/app/TabActivityPlus;->ensureTabHost()V

    .line 84
    iget-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/TabHostPlus;->setCurrentTab(I)V

    .line 87
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPostResume()V

    .line 94
    invoke-virtual {p0}, Lcom/meizu/app/TabActivityPlus;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/app/TabActivityPlus;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/meizu/app/TabActivityPlus;->ensureTabHost()V

    .line 65
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/TabHostPlus;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v1}, Lcom/meizu/widget/TabHostPlus;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    iget-object v2, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/TabHostPlus;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget v1, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    iget v2, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/meizu/widget/TabHostPlus;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    iget-object v1, p0, Lcom/meizu/app/TabActivityPlus;->mTabHost:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v1}, Lcom/meizu/widget/TabHostPlus;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTab:Ljava/lang/String;

    .line 58
    iput p1, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTabIndex:I

    .line 59
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTab:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/app/TabActivityPlus;->mDefaultTabIndex:I

    .line 49
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, result:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/meizu/app/TabActivityPlus;->getTabHost()Lcom/meizu/widget/TabHostPlus;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/meizu/widget/TabHostPlus;->performIntentForCurrentChild(Landroid/content/Intent;)Z

    move-result v0

    .line 170
    :cond_0
    if-nez v0, :cond_1

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 172
    :cond_1
    return-void
.end method
