/*
================================================================================
��ṹ����:TB_PAYAD
��ṹ����:Ӧ����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAD;
drop index AK_TB_PAYAD;
drop table TB_PAYAD;
create table TB_PAYAD  (
   PAYAD_ID             INTEGER                         not null,  /*Ӧ����ϸID        */
   PAYAD001             INTEGER                         not null,  /*Ӧ������ID        */
   PAYAD002             VARCHAR2(1),                               /*������Դ          */
   PAYAD003             VARCHAR2(30),                              /*��Դ����          */
   PAYAD004             INTEGER,                                   /*��ƷID            */
   PAYAD005             INTEGER,                                   /*�ֽ��춯��ID      */ 
   PAYAD006             INTEGER,                                   /*��ƿ�ĿID          */ 
   PAYAD007             INTEGER,                                   /*��λID              */ 
   PAYAD008             NUMBER(18,3),                              /*����              */ 
   PAYAD009             NUMBER(16,2),                              /*ԭ�ҵ���          */
   PAYAD010             NUMBER(16,2),                              /*���ҵ���          */ 
   PAYAD011             INTEGER,                                   /*˰��ID              */ 
   PAYAD012             NUMBER(5,2),                               /*˰��              */ 
   PAYAD013             NUMBER(16,2),                              /*ԭ��δ˰���      */ 
   PAYAD014             NUMBER(16,2),                              /*����δ˰���      */ 
   PAYAD015             NUMBER(16,2),                              /*ԭ��˰��          */ 
   PAYAD016             NUMBER(16,2),                              /*����˰��          */ 
   PAYAD017             NUMBER(16,2),                              /*ԭ�Һ�˰���      */
   PAYAD018             NUMBER(16,2),                              /*���Һ�˰���      */  
   PAYAD019             NUMBER(16,2),                              /*ԭ��ֱ�Ӹ�����    */   
   PAYAD020             NUMBER(16,2),                              /*����ֱ�Ӹ�����    */
   PAYAD021             INTEGER,                                   /*��Դ����ID          */
   PAYAD022             INTEGER,                                   /*��Դ��ϸID        */
   PAYAD023             INTEGER,                                   /*Ӫ����֯ID        */  
   PAYAD024             NUMBER(16,2),                              /*ԭ���Ѻ������    */   
   PAYAD025             NUMBER(16,2),                              /*�����Ѻ������    */      
   PAYAD026             VARCHAR2(255),                             /*��ע 20100510 add by gaoxl    */
   PAYAD027             INTEGER,                                   /*��Ʒ����id   20110712 add by gaoxl     */      
   PAYAD028             INTEGER,                                   /*��ƷƷ��id   20110712 add by gaoxl     */  
   PAYAD029             INTEGER,                                   /*��Ʒϵ��id    20110712 add by gaoxl    */ 
   PAYAD030             VARCHAR2(1),                               /*��������     20110712 add by gaoxl   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAD primary key (PAYAD_ID)
);
create sequence SEQ_TB_PAYAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAD to public;
grant index  on TB_PAYAD to public;
grant update on TB_PAYAD to public; 
grant delete on TB_PAYAD to public;  
grant insert on TB_PAYAD to public; 
grant select on SEQ_TB_PAYAD to public;   