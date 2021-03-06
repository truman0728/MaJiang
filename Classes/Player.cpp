//
// Created by neild47 on 17-12-22.
//

#include "Player.h"

void Player::mopai(MaJiang *majiang) {
    if (majiang != nullptr) {
        majiang->setColor(Color3B::YELLOW);
        this->playerMaJiang.pushBack(majiang);
    }
}

void Player::sort() {
    this->playerMaJiang.sort();
}

void Player::resetColor() {
    this->playerMaJiang.resetColor(Color3B::WHITE);
}

bool Player::isHupai(MaJiangType type) {
    return playerMaJiang.isHuPai(type);
}

bool Player::isPeng(MaJiangType type) {
    return playerMaJiang.isPeng(type);
}

bool Player::isGang(MaJiangType type) {
    return playerMaJiang.isGang(type);
}

int Player::isChi(MaJiangType type) {
    return playerMaJiang.isChi(type);
}

MaJiangType Player::getLastOutType() {
    return (*(--outPlayerMaJiang.cend()))->maJiangType;
}

MaJiang *Player::popLastOutMaJiang() {
    auto majiang = *(--outPlayerMaJiang.cend());
    outPlayerMaJiang.eraseObject(majiang);
    return majiang;
}

MaJiang *Player::popLastPlayerMaJiang() {
    auto majiang = *(--playerMaJiang.cend());
    playerMaJiang.eraseObject(majiang);
    return majiang;
}

void Player::peng(MaJiang *mj) {
    MaJiangType type = mj->maJiangType;
    if (!isPeng(type)) {
        return;
    }
    outPlayerMaJiang.pushBack(mj);
    mj->setColor(Color3B::GREEN);

    MaJiang *m = nullptr;
    for (int i = 0; i < 2; ++i) {
        m = playerMaJiang.getByType(type);
        m->setColor(Color3B::GREEN);
        m->setScale(0.5f);
        m->setTexture(MaJiang::getFilePathByType(m->maJiangType).getCString());
        outPlayerMaJiang.pushBack(m);
        playerMaJiang.eraseObject(m);
    }
}

void Player::gang(MaJiang *mj) {
    MaJiangType type = mj->maJiangType;
    if (!isPeng(type)) {
        return;
    }
    outPlayerMaJiang.pushBack(mj);
    mj->setColor(Color3B::GREEN);

    MaJiang *m = nullptr;
    for (int i = 0; i < 3; ++i) {
        m = playerMaJiang.getByType(type);
        m->setColor(Color3B::GREEN);
        m->setScale(0.5f);
        m->setTexture(MaJiang::getFilePathByType(m->maJiangType).getCString());
        outPlayerMaJiang.pushBack(m);
        playerMaJiang.eraseObject(m);
    }
}

void Player::chi(MaJiang *mj, int chiPosition) {
    int position = playerMaJiang.isChi(mj->maJiangType);

    if (chiPosition != 0) {
        position = chiPosition;
    }

    if (position == 0) {
        return;
    }

    mj->setScale(1);
    playerMaJiang.pushBack(mj);
    int startType = BEIMIAN;
    if (position & 0b100) {
        startType = mj->maJiangType;
    } else if (position & 0b010) {
        startType = mj->maJiangType - 1;
    } else if (position & 0b001) {
        startType = mj->maJiangType - 2;
    }

    if (startType != BEIMIAN) {
        for (int i = 0; i < 3; ++i) {
            auto m = playerMaJiang.getByType(MaJiangType(startType + i));
            m->setColor(Color3B::GREEN);
            m->setScale(0.5f);
            m->setTexture(MaJiang::getFilePathByType(m->maJiangType).getCString());
            outPlayerMaJiang.pushBack(m);
            playerMaJiang.eraseObject(m);
        }
    }
    playerMaJiang.sort();
}

void Player::pushToOutMaJiangList(MaJiang *item, ...) {
//    va_list args;
//    va_start(args, item);
//    while (item) {
//        outPlayerMaJiang.pushBack(item);
//        item = va_arg(args, MaJiang*);
//    }
//    va_end(args);
}

void Player::hupai(MaJiang *mj) {
    if (mj != nullptr) {
        mj->setColor(Color3B::RED);
        playerMaJiang.pushBack(mj);
    }
}

void Player::pushToPlayerMaJiangList(MaJiang *item, ...) {
//    va_list args;
//    va_start(args, item);
//    while (item) {
//        playerMaJiang.pushBack(item);
//        item = va_arg(args, MaJiang*);
//    }
//    va_end(args);
}

void Player::displayAll() {
    for (auto &mj : playerMaJiang) {
        mj->resetTexture();
    }

    display();
}




