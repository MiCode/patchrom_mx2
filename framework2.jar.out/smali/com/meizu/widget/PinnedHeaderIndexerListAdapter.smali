.class public abstract Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;
.super Lcom/meizu/widget/PinnedHeaderListAdapter;
.source "PinnedHeaderIndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;
    }
.end annotation


# static fields
.field public static final INVALID_PARTITION:I = -0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mLastSection:I

.field private mLastSectionOverScrollDistance:I

.field private mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/widget/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    iput v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 57
    new-instance v0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    .line 163
    iput v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 64
    iput-object p1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private getSectionPosition(I)I
    .locals 4
    .parameter "section"

    .prologue
    .line 237
    iget v2, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    .line 248
    :goto_0
    return v1

    .line 241
    :cond_0
    iget v2, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 242
    .local v0, partitionStart:I
    iget v2, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->hasHeader(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 247
    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int v1, v0, v2

    .line 248
    .local v1, sectionPosition:I
    goto :goto_0
.end method


# virtual methods
.method protected configureItemHeader(Landroid/widget/ListView;IIZ)V
    .locals 0
    .parameter "listView"
    .parameter "listPosition"
    .parameter "section"
    .parameter "visible"

    .prologue
    .line 262
    return-void
.end method

.method public configurePinnedHeaders(Lcom/meizu/widget/PinnedHeaderListView;)V
    .locals 14
    .parameter "listView"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/meizu/widget/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/meizu/widget/PinnedHeaderListView;)V

    .line 170
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 231
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/widget/PinnedHeaderListView;->getCurrentOverScrollDistance()I

    move-result v0

    .line 176
    .local v0, currentOverScrollDistance:I
    if-gez v0, :cond_3

    invoke-virtual {p1}, Lcom/meizu/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v1, 0x1

    .line 178
    .local v1, forceHide:Z
    :goto_1
    if-gez v0, :cond_1

    iget v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    if-ltz v11, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/meizu/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, p1, v11, v12, v13}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 181
    :cond_1
    iput v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 183
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .line 184
    .local v3, index:I
    iget-object v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getCount()I

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v1, :cond_4

    .line 185
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p1, v3, v11}, Lcom/meizu/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 186
    const/4 v11, -0x1

    iput v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    goto :goto_0

    .line 176
    .end local v1           #forceHide:Z
    .end local v3           #index:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 188
    .restart local v1       #forceHide:Z
    .restart local v3       #index:I
    :cond_4
    invoke-virtual {p1}, Lcom/meizu/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/meizu/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v5

    .line 189
    .local v5, listPosition:I
    invoke-virtual {p1}, Lcom/meizu/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v11

    sub-int v9, v5, v11

    .line 191
    .local v9, position:I
    const/4 v10, -0x1

    .line 192
    .local v10, section:I
    invoke-virtual {p0, v9}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPartitionForPosition(I)I

    move-result v8

    .line 193
    .local v8, partition:I
    iget v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 194
    invoke-virtual {p0, v9}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v10

    .line 202
    :cond_5
    :goto_2
    iget v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-le v11, v10, :cond_7

    .line 204
    iget v2, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .local v2, i:I
    :goto_3
    if-le v2, v10, :cond_9

    .line 205
    invoke-direct {p0, v2}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    invoke-virtual {p0, p1, v11, v2, v12}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 204
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 195
    .end local v2           #i:I
    :cond_6
    iget v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v8, v11, :cond_5

    .line 196
    invoke-virtual {p0, v9}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getOffsetInPartition(I)I

    move-result v7

    .line 197
    .local v7, offset:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_5

    .line 198
    invoke-virtual {p0, v7}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v10

    goto :goto_2

    .line 208
    .end local v7           #offset:I
    :cond_7
    iget v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-ge v11, v10, :cond_8

    .line 210
    iget v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    add-int/lit8 v2, v11, 0x1

    .restart local v2       #i:I
    :goto_4
    if-gt v2, v10, :cond_9

    .line 211
    invoke-direct {p0, v2}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v2, v12}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 214
    .end local v2           #i:I
    :cond_8
    iget v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-ne v11, v10, :cond_9

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    invoke-direct {p0, v10}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    if-ne v11, v9, :cond_9

    .line 216
    const/4 v11, 0x0

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 218
    :cond_9
    iput v10, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 220
    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    .line 221
    const/4 v11, 0x0

    invoke-virtual {p1, v3, v11}, Lcom/meizu/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto/16 :goto_0

    .line 223
    :cond_a
    iget-object v11, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v11, v10}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->setPinnedSectionHeaderView(Landroid/view/View;I)V

    .line 226
    add-int/lit8 v11, v10, 0x1

    invoke-direct {p0, v11}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v6

    .line 227
    .local v6, nextSectionPosition:I
    add-int/lit8 v11, v6, -0x1

    if-ne v9, v11, :cond_b

    const/4 v4, 0x1

    .line 228
    .local v4, isLastInSection:Z
    :goto_5
    invoke-virtual {p1, v3, v5, v4}, Lcom/meizu/widget/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto/16 :goto_0

    .line 227
    .end local v4           #isLastInSection:Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_5
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public getItemPlacementInSection(I)Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    #getter for: Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I
    invoke-static {v1}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->access$000(Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    .line 291
    :goto_0
    return-object v1

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    #setter for: Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I
    invoke-static {v1, p1}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->access$002(Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;I)I

    .line 275
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    invoke-virtual {p0, p1}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 277
    .local v0, section:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 279
    iget-object v4, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 285
    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    .line 291
    .end local v0           #section:I
    :goto_3
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    goto :goto_0

    .line 281
    .restart local v0       #section:I
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 282
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 285
    goto :goto_2

    .line 287
    .end local v0           #section:I
    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 288
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    .line 289
    iget-object v1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-super {p0}, Lcom/meizu/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "viewIndex"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    .line 159
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/widget/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, -0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .locals 0
    .parameter "partition"

    .prologue
    .line 100
    iput p1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 101
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .parameter "indexer"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 109
    iget-object v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->invalidate()V

    .line 110
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .locals 2
    .parameter "pinnedHeaderView"
    .parameter "section"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    const v1, 0x102038a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, headerText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v0           #headerText:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 93
    return-void
.end method
