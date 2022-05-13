struct VertexOutput {
    [[builtin(position)]] member: vec4<f32>;
};

var<private> pos_1: vec2<f32>;
var<private> gl_Position: vec4<f32>;

fn main_2() {
    let _e2 = pos_1;
    gl_Position = vec4<f32>(_e2.x, _e2.y, 0.0, f32(1));
    return;
}

[[stage(vertex)]]
fn vs_main([[location(0)]] pos: vec2<f32>) -> VertexOutput {
    pos_1 = pos;
    main_2();
    let _e5 = gl_Position;
    return VertexOutput(_e5);
}

struct MyBlock {
    u_resolution: vec2<f32>;
};

[[group(0), binding(0)]]
var<uniform> global: MyBlock;
var<private> outColor: vec4<f32>;
var<private> gl_FragCoord: vec4<f32>;

fn main_1() {
    var st: vec2<f32>;

    let _e4 = gl_FragCoord;
    let _e6 = global.u_resolution;
    st = (_e4.xy / _e6);
    let _e9 = st;
    let _e11 = st;
    outColor = vec4<f32>(_e9.x, _e11.y, 0.0, 1.0);
    return;
}

[[stage(fragment)]]
fn fs_main([[builtin(position)]] param: vec4<f32>) {
    gl_FragCoord = param;
    main_1();
    return;
}


