/*
================================================================================
��ṹ����:TB_SALBV
��ṹ����:�������˵���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBV;
drop index AK_TB_SALBV;
drop table TB_SALBV;
create table TB_SALBV  (
   SALBV_ID             INTEGER                         not null,  /*�������˵���ƷID                               */
   SALBV001             INTEGER                         not null,  /*�������˵�ID                                   */
   SALBV002             INTEGER,                                   /*��Դ����ƷID                                   */
   SALBV003             INTEGER,                                   /*��Ʒ����ID                                     */
   SALBV004             INTEGER                         not null,  /*��Ʒ����ID                                     */
   SALBV005             VARCHAR2(1)                     not null,  /*�Ƿ���װƷ                                     */
   SALBV006             VARCHAR2(1),                               /*�Ƿ�ɷ�                                       */
   SALBV007             INTEGER,                                   /*������װƷID                                   */
   SALBV008             VARCHAR2(1),                               /*�Ƿ����Ʒ                                     */
   SALBV009             INTEGER                         not null,  /*ԭ��ƷID                                       */
   SALBV010             INTEGER,                                   /*���׵�λID        				    */
   SALBV011             NUMBER(18,3),                              /*��������          				    */
   SALBV012             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ                                       */
   SALBV013             INTEGER                         not null,  /*����ID                                         */
   SALBV014             NUMBER(5),                                 /*��������                                       */
   SALBV015             INTEGER                         not null,  /*Ʒ��ID                                         */
   SALBV016             INTEGER                         not null,  /*Ʒ��ID                                         */
   SALBV017             INTEGER,                                   /*ά��1ID                                        */
   SALBV018             INTEGER,                                   /*ά��2ID                                        */
   SALBV019             INTEGER,                                   /*ά��3ID                                        */
   SALBV020             INTEGER,                                   /*ά��4ID                                        */
   SALBV021             INTEGER,                                   /*ά��5ID                                        */
   SALBV022             INTEGER                         not null,  /*���˵�λID                                     */
   SALBV023             NUMBER(12,2)                    not null,  /*������                                         */
   SALBV024             INTEGER                         not null,  /*�ֿ�ID                                         */
   SALBV025             NUMBER(18,3),                              /*���ÿ����                                     */
   SALBV026             NUMBER(12,2)                    not null,  /*ԭ�ۼ�                                         */
   SALBV027             NUMBER(12,2)                    not null,  /*����                                           */
   SALBV028             NUMBER(18,3)                    not null,  /*�˻�����                                       */
   SALBV029             INTEGER                         not null,  /*˰��ID                                         */
   SALBV030             NUMBER(12,2)                    not null,  /*˰��(%)                                        */
   SALBV031             NUMBER(12,2)                    not null,  /*δ˰���                                       */
   SALBV032             NUMBER(12,2)                    not null,  /*��˰���                                       */
   SALBV033             NUMBER(12,2),                              /*ԭ����(%)                                      */
   SALBV034             NUMBER(12,2),                              /*�¿���(%)                                      */
   SALBV035             NUMBER(12,2),                              /*�����ۼ�                                       */
   SALBV036             NUMBER(12,2),                              /*С���ۼ�                                       */
   SALBV037             NUMBER(12,2),                              /*�����ۼ�                                       */
   SALBV038             NUMBER(12,2),                              /*��Ա�ۼ�                                       */
   SALBV039             NUMBER(12,2),                              /*��Ա�ۿۿ��ۼ�                                 */
   SALBV040             NUMBER(12,2),                              /*�����ؼ��ۼ�                                   */
   SALBV041             NUMBER(12,2),                              /*�����ۿ��ۼ�                                   */
   SALBV042             NUMBER(12,2),                              /*��������ۼ�                                   */
   SALBV043             NUMBER(12,2)                    not null,  /*�ۺ�δ˰���(���������ۼ�)                     */
   SALBV044             NUMBER(12,2)                    not null,  /*�ۺ�˰���(���������ۼ�)                     */
   SALBV045             NUMBER(12,2),                              /*���������ۼ�                                   */
   SALBV046             NUMBER(12,2),                              /*����ʵ�˿���                                 */
   SALBV047             NUMBER(12,2)                    not null,  /*�ۺ󵥼�                                       */
   SALBV048             NUMBER(12,2)                    not null,  /*�ۺ�δ˰���                                   */
   SALBV049             NUMBER(12,2)                    not null,  /*�ۺ�˰���                                   */
   SALBV050             VARCHAR2(255),                             /*��ע                                           */
   SALBV051             NUMBER(18,3),                              /*��������                                       */
   SALBV052             NUMBER(12,2),                              /*���˽��                                       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                   */                               
   CREATE_DATE          DATE,                                      /*��������                                       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                       */
   MODI_DATE            DATE,                                      /*�޸�����                                       */
   FLAG                 NUMBER(1),                                 /*����״̬                                       */
   constraint PK_TB_SALBV primary key (SALBV_ID)
);
create index AK_TB_SALBV on TB_SALBV (SALBV_ID,SALBV001,SALBV004);
create sequence SEQ_TB_SALBV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBV to public;
grant index  on TB_SALBV to public;
grant update on TB_SALBV to public; 
grant delete on TB_SALBV to public;  
grant insert on TB_SALBV to public; 
grant select on SEQ_TB_SALBV to public;   