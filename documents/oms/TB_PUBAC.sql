/* 20121024 add by gaoxl for ����ҳǩ����һ����������Ŀ������ʾ��ʽ 1����չ����һ����Ŀ��2����λ���ϴ�¼���Ŀ
*/
/*                 
================================================================================
��ṹ����:TB_PUBAC
��ṹ����:�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBAC;
drop index AK_TB_PUBAC;
drop table TB_PUBAC;
create table TB_PUBAC  (
   PUBAC_ID             INTEGER                         not null,  /*�������ID         */
   PUBAC001             INTEGER                         not null,  /*��˾ID             */
   PUBAC002             NUMBER(16,2)                    not null,  /*�ڳ��������       */
   PUBAC003             INTEGER                         not null,  /*ֱ���տ����           */
   PUBAC004             INTEGER                         not null,  /*Ԥ�մ��ֵ���           */
   PUBAC005             VARCHAR2(1),                               /*���˼��᷽ʽ           */
   PUBAC006             NUMBER(5,4),                               /*���˼������           */
   PUBAC007             VARCHAR2(1) ,                              /*���õ�������ȫ��       */
   PUBAC008             INTEGER ,                                  /*����Ӧ�յ�           */
   PUBAC009             INTEGER,                                   /*�����ֽ��춯��           */
   PUBAC010             INTEGER ,                                  /*���տ�Ӧ�յ���           */
   PUBAC011             INTEGER ,                                  /*Ԥ�����ֵ���           */
   PUBAC012             INTEGER,                                   /*ֱ�Ӹ����ID           */
   PUBAC013             INTEGER ,                                  /*�����ݹ�����           */
   PUBAC014             INTEGER ,                                  /*����Ӧ������           */
   PUBAC015             INTEGER ,                                  /*�����ֽ��춯��           */
   PUBAC016             INTEGER ,                                  /*�����ݹ�����           */
   PUBAC017             INTEGER ,                                  /*����Ӧ������           */
   PUBAC018             INTEGER ,                                  /*�����ֽ��춯��           */
   PUBAC019             INTEGER ,                                  /*��Ӫ�ݹ�����           */
   PUBAC020             INTEGER,                                   /*��ӪӦ������           */
   PUBAC021             VARCHAR2(1)                     not null,  /*�ֹ�����           */
   PUBAC022             VARCHAR2(1),                               /*Ӫ����֯������� 20100824 modi by gaoxlԤ���ֶ�           */
   PUBAC023             VARCHAR2(1),                               /*���뷽ʽ           */
   PUBAC024             NUMBER(2) ,                                /*���               */
   PUBAC025             VARCHAR2(4)                     not null,  /*�������           */
   PUBAC026             VARCHAR2(2)                     not null,  /*�����ڼ�           */
   PUBAC027             VARCHAR2(4)                     not null,  /*�������           */
   PUBAC028             VARCHAR2(2)                     not null,  /*�����ڼ�           */
   PUBAC029             VARCHAR2(1)                     not null,  /*�Ƿ��ʼ��           */
   PUBAC030             NUMBER(5,4),                               /*Ԥ���ֶ�           */
   PUBAC031             VARCHAR2(1)                     not null,  /*���ɹ���           */
   PUBAC032             VARCHAR2(4),                               /*Ԥ���ֶ�          */
   PUBAC033             VARCHAR2(2) ,                              /*Ԥ���ֶ�           */
   PUBAC034             VARCHAR2(4),                               /*��Ŀ������ʾ��ʽ   */
   PUBAC035             VARCHAR2(1),                               /*�ⲿ�����Ƿ���ȷ�� */
   PUBAC036             VARCHAR2(1) ,                              /*ƾ֤�����ǧ��λ��ʾ       */20110308 modi by gaoxl for  VARCHAR2(2)->VARCHAR2(1)
   PUBAC037             VARCHAR2(1),                               /*�����ֽ��춯��      */20110506 modi by gaoxl for VARCHAR2(4) ->VARCHAR2(1)
   PUBAC038             VARCHAR2(1) ,                              /*ƾ֤�Ƶ���˲���Ϊͬһ��     */20110216 modi by gaoxl for VARCHAR2(2)->VARCHAR2(1)
   PUBAC039             VARCHAR2(1) ,                              /*�����������       */
   PUBAC040             NUMBER(5,4) ,                              /*Ԥ���ֶ�           */   
   PUBAC041             INTEGER ,                                  /*���տ��ֽ��춯��   */ 
   PUBAC042             INTEGER ,                                  /*��Ӫ�ֽ��춯��     */ 
   PUBAC043             VARCHAR2(1) ,                              /*Ӧ�պ�����ʽ       */ 
   PUBAC044             VARCHAR2(1) ,                              /*Ӧ��������ʽ       */ 
   PUBAC045             INTEGER ,                                  /*����Ӧ�յ���       */ 
   PUBAC046             INTEGER ,                                  /*Ԥ������ID         */   
   PUBAC047             INTEGER ,                                  /*Ԥ���춯��ID        */    
   PUBAC048             INTEGER ,                                  /*Ԥ�յ���ID         */    
   PUBAC049             INTEGER ,                                  /*Ԥ���춯��ID        */        
   PUBAC050             INTEGER ,                                  /*Ĭ�Ͽͻ�ID  ---20100403 add by zhawj       */  20120508 modi by gaoxl for not null ->��Ϊ��
   PUBAC051             VARCHAR2(1)  ,                             /*���ɱ����� ---20100403 add by zhawj      */   
   PUBAC052            VARCHAR2(1)  ,                              /*�۸��ȳ� ---20100403 add by zhawj       */   --20111014 mark by xiechu  
   PUBAC053             VARCHAR2(1)  ,                             /*�۵��ȳ�  ---20100403 add by zhawj        */ --20111015 mark by xiechu    
   PUBAC054            VARCHAR2(1)  ,                              /*�Ƚ��ȳ�  ---20100403 add by zhawj        */  
   PUBAC055            VARCHAR2(1)  ,                              /*����ȳ�  ---20100403 add by zhawj        */  
   PUBAC056             INTEGER ,                                  /*��Ա�����ֽ��춯��    */
   PUBAC057             INTEGER ,                                  /*��Ա���������˻�     */
   PUBAC058             VARCHAR2(1),                               /*�����ת��Ŀ   */
   PUBAC059             INTEGER,                                   /*�г��տ��   */
   PUBAC060             INTEGER,                                   /*�������춯�� 20100724 add by gaoxl   */   
   PUBAC061             INTEGER,                                   /*�˻�Ԥ���˿��  20100927 add by hansf   */  
   PUBAC062             INTEGER,                                   /*�˻�Ԥ���˿��춯�� 20100927 add by hansf   */  
   PUBAC063             VARCHAR2(1),                               /*�Ƿ��������۱���*/
   PUBAC064             VARCHAR2(1),                               /*�ͻ�ʱ�䲻���Ƿ��µ�*/
   PUBAC065             VARCHAR2(1),                               /*̯λ�Ƿ��������*/   
   PUBAC066             INTEGER,                                   /*����ID 20101209 add by gaoxl for OA*/  
   PUBAC067             INTEGER,                                   /*��������ID 20101209 add by gaoxl for OA*/ 
   PUBAC068             INTEGER,                                   /*������������ 20101209 add by gaoxl for ������*/   
   PUBAC069             NUMBER(18,2),                              /*�������ñ��� 20110114 add by hansf for �ǲ�  */       
   PUBAC070             VARCHAR2(1),                               /*���ɼ����ģʽ 20110117 add by xiechun*/
   PUBAC071             VARCHAR2(1),                               /*��Ʒ�ͻ������ֿ� 20110503 add by xiechun*/
   PUBAC072             VARCHAR2(1),                               /*ѡ���տʽ 20110615 add by gaoxl*/  
   PUBAC073             VARCHAR2(1),                               /*Ԥ��������� 20110624 add by gaoxl*/  
   PUBAC074             VARCHAR2(1),                               /*ѡ�񸶿ʽ 20110713 add by gaoxl*/   
   PUBAC075             INTEGER,                                   /*��˾�տ��   */ //20111026 add by gaoxl for 8702     
   PUBAC076             VARCHAR2(1),                               /*��Ŀ������ʾ��ʽ   */      
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBAC primary key (PUBAC_ID)
);
create unique index AK_TB_PUBAC on TB_PUBAC (PUBAC001);
create sequence SEQ_TB_PUBAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBAC to public;
grant index  on TB_PUBAC to public;
grant update on TB_PUBAC to public; 
grant delete on TB_PUBAC to public;  
grant insert on TB_PUBAC to public; 
grant select on SEQ_TB_PUBAC to public;   