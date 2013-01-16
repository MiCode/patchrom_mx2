.class public abstract Lcom/meizu/widget/CompositeCursorAdapterMz;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapterMz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;-><init>(Landroid/content/Context;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "initialCapacity"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    iput v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    .line 62
    iput v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    .line 63
    iput-boolean v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    .line 64
    iput-boolean v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    .line 72
    iput-object p1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iput-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    .line 74
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V
    .locals 5
    .parameter "partition"

    .prologue
    const/4 v4, 0x0

    .line 90
    iget v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    iget-object v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 91
    iget v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v1, v2, 0x2

    .line 92
    .local v1, newCapacity:I
    new-array v0, v1, [Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    .line 93
    .local v0, newAdapters:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iget v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    .line 96
    .end local v0           #newAdapters:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    .end local v1           #newCapacity:I
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iget v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    aput-object p1, v2, v3

    .line 97
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 98
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public addPartition(ZZ)V
    .locals 1
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 86
    new-instance v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    invoke-direct {v0, p1, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 87
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v0, v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 476
    const/4 v1, 0x0

    .line 479
    :goto_1
    return v1

    .line 474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 381
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 214
    .local v0, prevCursor:Landroid/database/Cursor;
    if-eq v0, p2, :cond_2

    .line 215
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 219
    if-eqz p2, :cond_1

    .line 220
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 223
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 225
    :cond_2
    return-void
.end method

.method public clearPartitions()V
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 122
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 131
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    .line 137
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 138
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 139
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-boolean v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    if-eqz v4, :cond_0

    .line 185
    :goto_0
    return-void

    .line 171
    :cond_0
    iput v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    .line 172
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v4, :cond_4

    .line 173
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 174
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 175
    .local v0, count:I
    :goto_2
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_2

    .line 176
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_2

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 180
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    .line 181
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #count:I
    :cond_3
    move v0, v3

    .line 174
    goto :goto_2

    .line 184
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 199
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .parameter "partition"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "partition"
    .parameter "cursor"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 362
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 365
    .local v0, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 366
    return-object v0

    .line 362
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/widget/CompositeCursorAdapterMz;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 416
    const/4 v4, 0x0

    .line 417
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v5, :cond_1

    .line 418
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v1, v4, v5

    .line 419
    .local v1, end:I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 420
    sub-int v3, p1, v4

    .line 421
    .local v3, offset:I
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 422
    add-int/lit8 v3, v3, -0x1

    .line 424
    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 434
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_1
    :goto_1
    return-object v0

    .line 427
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 428
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    .line 431
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_3
    move v4, v1

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, -0x1

    const-wide/16 v5, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 442
    const/4 v4, 0x0

    .line 443
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v7, :cond_1

    .line 444
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v1, v4, v7

    .line 445
    .local v1, end:I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 446
    sub-int v3, p1, v4

    .line 447
    .local v3, offset:I
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget-boolean v7, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v7, :cond_0

    .line 448
    add-int/lit8 v3, v3, -0x1

    .line 450
    :cond_0
    if-ne v3, v8, :cond_2

    .line 466
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_1
    :goto_1
    return-wide v5

    .line 453
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    if-eq v7, v8, :cond_1

    .line 457
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget-object v0, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 458
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 461
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_1

    .line 463
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_3
    move v4, v1

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 309
    const/4 v3, 0x0

    .line 310
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v4

    .line 312
    .local v0, end:I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 313
    sub-int v2, p1, v3

    .line 314
    .local v2, offset:I
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 315
    const/4 v4, -0x1

    .line 317
    :goto_1
    return v4

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getItemViewType(II)I

    move-result v4

    goto :goto_1

    .line 319
    .end local v2           #offset:I
    :cond_1
    move v3, v0

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0           #end:I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .locals 1
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v4

    .line 260
    .local v0, end:I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 261
    sub-int v2, p1, v3

    .line 262
    .local v2, offset:I
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    .line 263
    add-int/lit8 v2, v2, -0x1

    .line 269
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_0
    :goto_1
    return v2

    .line 267
    .restart local v0       #end:I
    :cond_1
    move v3, v0

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0           #end:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    .locals 1
    .parameter "partitionIndex"

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-lt p1, v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    return v0
.end method

.method public getPartitionForPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v2, v3

    .line 243
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 248
    .end local v0           #end:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 246
    .restart local v0       #end:I
    .restart local v1       #i:I
    :cond_0
    move v2, v0

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0           #end:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .parameter "partition"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 279
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int/2addr v1, v2

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return v1
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 389
    if-eqz p4, :cond_0

    .line 390
    move-object v6, p4

    .line 394
    .local v6, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/meizu/widget/CompositeCursorAdapterMz;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 395
    return-object v6

    .line 392
    .end local v6           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/CompositeCursorAdapterMz;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 327
    const/4 v7, 0x0

    .line 328
    .local v7, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v0, :cond_4

    .line 329
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v6, v7, v0

    .line 330
    .local v6, end:I
    if-lt p1, v7, :cond_3

    if-ge p1, v6, :cond_3

    .line 331
    sub-int v3, p1, v7

    .line 332
    .local v3, offset:I
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    .line 333
    add-int/lit8 v3, v3, -0x1

    .line 336
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 345
    .local v8, view:Landroid/view/View;
    :goto_1
    if-nez v8, :cond_5

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    .end local v8           #view:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .restart local v8       #view:Landroid/view/View;
    goto :goto_1

    .line 351
    .end local v3           #offset:I
    .end local v8           #view:Landroid/view/View;
    :cond_3
    move v7, v6

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 354
    .end local v6           #end:I
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 349
    .restart local v3       #offset:I
    .restart local v6       #end:I
    .restart local v8       #view:Landroid/view/View;
    :cond_5
    return-object v8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .parameter "partition"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    .line 160
    return-void
.end method

.method public isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 488
    const/4 v3, 0x0

    .line 489
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v5, :cond_0

    .line 490
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v5

    .line 491
    .local v0, end:I
    if-lt p1, v3, :cond_2

    if-ge p1, v0, :cond_2

    .line 492
    sub-int v2, p1, v3

    .line 493
    .local v2, offset:I
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    .line 502
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_0
    :goto_1
    return v4

    .line 496
    .restart local v0       #end:I
    .restart local v2       #offset:I
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->isEnabled(II)Z

    move-result v4

    goto :goto_1

    .line 499
    .end local v2           #offset:I
    :cond_2
    move v3, v0

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isEnabled(II)Z
    .locals 1
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .locals 2
    .parameter "partition"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 232
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    .line 528
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removePartition(I)V
    .locals 5
    .parameter "partitionIndex"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 103
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    .line 110
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 111
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "flag"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    .line 143
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 144
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    .line 519
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 522
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "flag"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    .line 148
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 149
    return-void
.end method
