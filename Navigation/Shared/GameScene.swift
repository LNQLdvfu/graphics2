

import MetalKit

struct GameScene {
  lazy var house: Model = {
    Model(name: "lowpoly-house.obj")
  }()
  lazy var ground: Model = {
    var ground = Model(name: "plane.obj")
    ground.tiling = 16
    ground.scale = 40
    return ground
  }()
  lazy var models: [Model] = [ground, house]
  var camera = OrthographicCamera()

  init() {
    camera.position = [0, 2, 0]
    camera.rotation.x = .pi / 2
  }

  mutating func update(size: CGSize) {
    camera.update(size: size)
  }

  mutating func update(deltaTime: Float) {
    camera.update(deltaTime: deltaTime)
  }
}
