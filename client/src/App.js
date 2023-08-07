import { Routes, Route } from 'react-router-dom';
import { path } from './ultils/constant';
import { Home, Homepage, Login, LookingRoomate, RentalApartment, RentalHouse, RentalRoom, RentalSpace } from './containers/public';
import { CreatePost, ManagePost, System } from './containers/system';
function App() {
  return (
    <div className="h-full w-screen bg-primary">
      <Routes>
        <Route path={path.HOME} element={<Home />}>
          <Route path='*' element={<Homepage />} />
          <Route path={path.HOME__PAGE} element={<Homepage />} />
          <Route path={path.LOGIN} element={<Login />} />
          <Route path={path.CHO_THUE_CAN_HO} element={<RentalApartment />} />
          <Route path={path.CHO_THUE_MAT_BANG} element={<RentalSpace />} />
          <Route path={path.CHO_THUE_PHONG_TRO} element={<RentalRoom />} />
          <Route path={path.TIM_NGUOI_O_GHEP} element={<LookingRoomate />} />
          <Route path={path.NHA_CHO_THUE} element={<RentalHouse />} />
        </Route>
        <Route path={path.SYSTEM} element={<System />} >
          <Route path={path.CREATE_POST} element={<CreatePost />} />
          <Route path={path.MANAGE_POST} element={<ManagePost />} />
        </Route>
      </Routes>
    </div>
  );
}

export default App;
