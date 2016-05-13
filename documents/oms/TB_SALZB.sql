/*
================================================================================
��ṹ����:TB_SALZB
��ṹ����:���۵��ӱ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALZB;
drop index AK_TB_SALZB;
drop table TB_SALZB;
create table TB_SALZB  (
   SALZB_ID             INTEGER                         not null,  /*���۵��ӱ������ID */
   SALZB001             INTEGER                         not null,  /*���۵��ӱ�ID       */
   SALZB002             INTEGER                                 ,  /*��Ʒ����ID         */
   SALZB003             VARCHAR2(32),                              /*�����             */
   SALZB004             INTEGER                                 ,  /*��ƷID            */
   SALZB005             VARCHAR2(30),				    /*��Ʒ���          */
   SALZB006             VARCHAR2(255),				                     /*��Ʒȫ��          */
   SALZB007             VARCHAR2(100),                              /*����ͺ�          */
   SALZB008             INTEGER,                                   /*���׵�λID        */
   SALZB009             VARCHAR2(4)                             ,  /*��λ����          */
   SALZB010             VARCHAR2(20)                            ,  /*��λ����          */
   SALZB011             VARCHAR2(1),                               /*�ɶ���            */
   SALZB012             VARCHAR2(1),                               /*�۸����Ϳɶ���(�Ƿ�����ʵ��)*/
   SALZB013             VARCHAR2(2),                               /*���λ          */
   SALZB014             INTEGER                                 ,  /*����ID            */
   SALZB015             VARCHAR2(10) ,                             /*���̺�            */
   SALZB016             VARCHAR2(255)   ,                           /*���̼��          */
   SALZB017             INTEGER,                                   /*��Ʒ��ID(ϵ��)    */
   SALZB018             VARCHAR2(10),                              /*ϵ�д���           */
   SALZB019             VARCHAR2(100),                              /*ϵ������           */
   SALZB020             INTEGER,                                   /*Ʒ��ID             */
   SALZB021             VARCHAR2(16),                              /*Ʒ�����           */
   SALZB022             VARCHAR2(100),                              /*Ʒ������           */
   SALZB023             INTEGER,                                   /*ά��1ID            */
   SALZB024             VARCHAR2(8)                             ,  /*ά��1�����        */
   SALZB025             VARCHAR2(32)                            ,  /*ά��1������        */
   SALZB026             INTEGER,                                   /*ά��2ID            */
   SALZB027             VARCHAR2(8)                             ,  /*ά��2�����        */
   SALZB028             VARCHAR2(32)                            ,  /*ά��2������        */
   SALZB029             INTEGER,                                   /*ά��3ID            */
   SALZB030             VARCHAR2(8)                             ,  /*ά��3�����        */
   SALZB031             VARCHAR2(32)                            ,  /*ά��3������        */
   SALZB032             INTEGER,                                   /*ά��4ID            */
   SALZB033             VARCHAR2(8)                             ,  /*ά��4�����        */
   SALZB034             VARCHAR2(32)                            ,  /*ά��4������        */
   SALZB035             INTEGER,                                   /*ά��5ID            */
   SALZB036             VARCHAR2(8)                             ,  /*ά��5�����        */
   SALZB037             VARCHAR2(32)                            ,  /*ά��5������        */
   SALZB038             INTEGER                                 ,  /*���۵�λID         */
   SALZB039             VARCHAR2(4)                             ,  /*���۵�λ����       */
   SALZB040             VARCHAR2(20)                            ,  /*���۵�λ����       */
   SALZB041             INTEGER,                                   /*�ֿ�ID             */
   SALZB042             VARCHAR2(8)                             ,  /*�ֿ����          */
   SALZB043             VARCHAR2(64)                            ,  /*�ֿ�����          */
   SALZB044             INTEGER                                 ,  /*˰��ID            */
   SALZB045             VARCHAR2(4)                             ,  /*˰�ִ���           */
   SALZB046             VARCHAR2(30)                            ,  /*˰������           */
   SALZB047             VARCHAR2(1),                               /*��˰               */
   SALZB048             NUMBER(12,2)                            ,  /*����ۼ�           */
   SALZB049             VARCHAR2(4)                             ,  /*SALBI072C0         */
   SALZB050             VARCHAR2(30)                            ,  /*SALBI072C1         */
   SALZB051             NUMBER(12,2)                            ,  /*SALBI072C2         */
   SALZB052             VARCHAR2(1)                             ,  /*pubhd098           */
   SALZB053             VARCHAR2(1)                             ,  /*pubhb040           */
   SALZB054             VARCHAR2(1)                             ,  /*pubhb099��Դ�ڹ��� */
   FLAG                 NUMBER,                                    /*����״̬         */
   constraint PK_TB_SALZB primary key (SALZB_ID)
);
create unique index AK_TB_SALZB on TB_SALZB (SALZB001);
create sequence SEQ_TB_SALZB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZB to public;
grant index  on TB_SALZB to public;
grant update on TB_SALZB to public; 
grant delete on TB_SALZB to public;  
grant insert on TB_SALZB to public; 
grant select on SEQ_TB_SALZB to public;   